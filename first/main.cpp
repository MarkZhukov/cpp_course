#include <iostream>
#include <thread>
#include <random>
#include "CBlockList.h"
#include "picosha2.h"

void cons(CBlockList &list)
{
    while (list.hash()) {}
}

void prod(CBlockList &blockList)
{
    std::random_device device;
    std::mt19937 bound_args(device());
    std::uniform_int_distribution<> distribution(0,255);
    auto rand = std::bind(distribution, bound_args);
    while (true) {
        std::vector<unsigned char> block(512 * 1024);
        for (unsigned char& ch : block) {
            ch = (unsigned char) rand();
        }
        if (!blockList.push(block)) break;
    }
}

int main()
{
    CBlockList blockList;
    std::thread thrProducer1(prod, std::ref(blockList));
    std::thread thrProducer2(prod, std::ref(blockList));
    std::thread thrConsumer1(cons, std::ref(blockList));
    std::thread thrConsumer2(cons, std::ref(blockList));
    thrProducer1.join();
    thrProducer2.join();
    thrConsumer1.join();
    thrConsumer2.join();
    blockList.write("D:\\hashes.bin");
    return 0;
}