
#ifndef PRODUCER_CONSUMER_CBLOCKLIST_H
#define PRODUCER_CONSUMER_CBLOCKLIST_H

#include <mutex>
#include <atomic>
#include <forward_list>
#include <condition_variable>
#include "cblock.h"

class CBlockList {
    std::forward_list<CBlock> list;
    std::mutex mutex;
    std::condition_variable variable;
    std::atomic<size_t> size, hashed;

public:
    CBlockList();
    bool push(std::vector<unsigned char> &block);
    bool hash();
    void write(const char* filename);




};


#endif //PRODUCER_CONSUMER_CBLOCKLIST_H
