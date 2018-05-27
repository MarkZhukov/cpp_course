
#include "merkle_tree.h"
#include "picosha2.h"

std::string Node::getString() {
	return string;
}

Node::Node(std::vector<std::string> &blocks, int tLeft, int tRight) {
    left = nullptr;
    right = nullptr;
    if (tLeft == tRight) {
        string = picosha2::hash256_hex_string(blocks[tLeft]);
    }
    else {
        int tm = (tLeft + tRight) >> 1;
        left = new Node(blocks, tLeft, tm);
        right = new Node(blocks, tm + 1, tRight);
        string = picosha2::hash256_hex_string(left->getString() + right->getString());
    }
}

Node::~Node() {
    if (left != nullptr) delete left;
    if (right != nullptr) delete right;
}