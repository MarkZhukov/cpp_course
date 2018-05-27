

#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <fstream>
#include <cstdlib>
#include <ctime>
#include "merkle_tree.h"

#define NBLOCKS 128
#define HASHES 4
#define STRLEN 512

std::string generate() {
    std::string ret = "";
    for (size_t i = 0; i < STRLEN; ++i) {
        ret += char('a' + rand() % 26);
    }
    return ret;
}


int produce(std::mutex &mutex, std::queue<std::string> &queue, std::condition_variable &variable) {
    int ret = 0;
    int t =  NBLOCKS * HASHES;
    for (size_t i = 0; i < t; ++i) {
        std::string str = generate();
        mutex.lock();
        queue.push(str);
        if (queue.size() >= HASHES) variable.notify_all();
        mutex.unlock();
    }
    return ret;
}

inline bool ready(std::mutex &mutex, std::queue<std::string> &queue) {
    std::lock_guard<std::mutex> guard(mutex);
    return queue.size() >= HASHES;
}


void consume(std::mutex &mutex, std::queue<std::string> &queue, std::condition_variable &variable) {
    std::ofstream file("blocks.txt");
    for (size_t i = 0; i < NBLOCKS; ++i) {
        while (!ready(mutex, queue)) {
            std::unique_lock<std::mutex> lock(mutex);
            variable.wait(lock);
        }
        mutex.lock();
        std::vector<std::string> blocks;
        for (size_t j = 0; j < HASHES; ++j) {
            blocks.push_back(queue.front());
            queue.pop();
        }
        mutex.unlock();
        Node *node = new Node(blocks, 0, HASHES - 1);
        file << node->getString() << "\n";
        delete node;
    }
    file.close();
}

int main() {
    srand(time(NULL));
    std::mutex mutex;
    std::queue<std::string> queue;
    std::condition_variable variable;
    std::thread consumer(consume, std::ref(mutex), std::ref(queue), std::ref(variable));
    std::thread producer(produce, std::ref(mutex), std::ref(queue), std::ref(variable));
    consumer.join();
    producer.join();
    return 0;
}

