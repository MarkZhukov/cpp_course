

#include "CBlockList.h"
#include <fstream>
#include <windows.h>
#include <iostream>
#include "picosha2.h"

#define NBLOCKS 512

CBlockList::CBlockList() : size(0), hashed(0) {}

bool CBlockList::hash() {
    std::unique_lock<std::mutex> unique_lock(mutex);
    while (size == hashed && hashed < NBLOCKS) {
        variable.wait(unique_lock);
    }
    if (hashed >= NBLOCKS)
        return false;
    auto it = list.begin();
    while (it->hash.size() != 0 && it != list.end()) it++;
    it->hash.resize(picosha2::k_digest_size);
    picosha2::hash256(it->data, it->hash);
    ++hashed;
    system("cls");
    std::cout << "waiting: " << size - hashed << "\nhashed:  " << hashed
              << "\n" << hashed * 100 / NBLOCKS << "%";
    return hashed < NBLOCKS;
}

bool CBlockList::push(std::vector<unsigned char> &block) {
    std::lock_guard<std::mutex> lock(mutex);
    if (size < NBLOCKS) {
        CBlock cBlock;
        std::swap(cBlock.data, block);
        list.push_front(cBlock);
        ++size;
        variable.notify_all();
        return true;
    }
    return false;
}

void CBlockList::write(const char *filename) {
    std::ofstream file(filename, std::ios::binary);
    for (CBlock &cBlock : list) {
        for (unsigned char &ch : cBlock.hash) file << ch;
    }
    file.close();
    std::cout << "\n";
    system("pause");

}


