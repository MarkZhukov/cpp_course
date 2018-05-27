

#ifndef MERKLE_TREE_H
#define MERKLE_TREE_H

#include <iostream>
#include <vector>

class Node {
	std::string string;
	Node *left, *right;

public:
	Node(std::vector<std::string> &blocks, int tLeft, int tRight);
    std::string getString();
	virtual ~Node();
};
#endif // MERKLE_TREE_H
