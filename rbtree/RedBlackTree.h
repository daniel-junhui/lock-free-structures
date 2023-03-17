#pragma once
#include <concepts>
#include <cassert>
#include "BinaryTree.h"

namespace daniel
{
    template <std::totally_ordered T>
    class RedBlackTree : public BinaryTree<T>
    {
        struct Node
        {
            using Pointer = std::shared_ptr<Node>;
            T value;
            Pointer left;
            Pointer right;
            Pointer parent;
            bool isRed = true;
        };

        using Pointer = typename Node::Pointer;
        Pointer root = nullptr;
        size_t size = 0;

        bool IsLeftChild(auto node) const
        {
            return node->parent->left == node;
        }

        Pointer ParentOf(auto node) const
        {
            return node->parent;
        }

        Pointer GrandparentOf(auto node) const
        {
            return ParentOf(node)->parent;
        }

        Pointer UncleOf(auto node) const
        {
            auto parent = ParentOf(node);
            if (IsLeftChild(parent))
                return GrandparentOf(node)->right;
            else
                return GrandparentOf(node)->left;
        }

        void InsertCase1(auto node)
        {

            if (ParentOf(node) == nullptr)
                node->isRed = false;
            else
                InsertCase2(node);
        }

        void InsertCase2(auto node)
        {

            if (ParentOf(node)->isRed == false)
                return;
            else
                InsertCase3(node);
        }

        void InsertCase3(auto node)
        {

            auto uncle = UncleOf(node);
            auto parent = ParentOf(node);
            auto grandparent = GrandparentOf(node);
            if (uncle != nullptr && uncle->isRed)
            {
                parent->isRed = false;
                uncle->isRed = false;
                grandparent->isRed = true;
                InsertCase1(grandparent);
            }
            else
                InsertCase4(node);
        }

        void InsertCase4(auto node)
        {

            // here we know that the parent is red, but the uncle is black or null
            auto parent = ParentOf(node);
            auto grandparent = GrandparentOf(node);

            // if node is a right child, and parent is a left child
            if (IsLeftChild(node) == false && IsLeftChild(parent))
            {
                RotateLeft(node);
                node = node->left;
                InsertCase5(node);
                return;
            }

            // if node is a left child, and parent is a right child
            if (IsLeftChild(node) && IsLeftChild(parent) == false)
            {
                RotateRight(node);
                node = node->right;
                InsertCase5(node);
                return;
            }

            InsertCase5(node);
        }

        void RotateLeft(auto node)
        {

            // here node is the right child of parent, and parent is the left child of grandparent
            auto parent = ParentOf(node);
            auto grandparent = GrandparentOf(node);

            // set parent's right child to node's left child
            parent->right = node->left;
            if (node->left != nullptr)
                node->left->parent = parent;

            // set node's left child to parent
            node->left = parent;
            parent->parent = node;

            // set grandparent's left child to node
            if (grandparent == nullptr)
                root = node;
            else
                grandparent->left = node;
            node->parent = grandparent;
        }

        void RotateRight(auto node)
        {

            // here node is the left child of parent, and parent is the right child of grandparent
            auto parent = ParentOf(node);
            auto grandparent = GrandparentOf(node);

            parent->left = node->right;
            if (node->right != nullptr)
                node->right->parent = parent;

            node->right = parent;
            parent->parent = node;

            if (grandparent == nullptr)
                root = node;
            else
                grandparent->right = node;
            node->parent = grandparent;
        }

        void InsertCase5(auto node)
        {

            auto parent = ParentOf(node);
            auto grandparent = GrandparentOf(node);

            assert(parent->isRed == true);
            assert(grandparent->isRed == false);

            parent->isRed = false;
            grandparent->isRed = true;

            if (IsLeftChild(parent) && IsLeftChild(node))
            {
                RotateRight(parent);
                return;
            }
            if (IsLeftChild(parent) == false && IsLeftChild(node) == false)
                RotateLeft(parent);
        }

    public:
        RedBlackTree() = default;
        ~RedBlackTree() = default;

        bool Insert(T value) override
        {

            Pointer parent = nullptr;
            auto pos = root;
            while (pos != nullptr)
            {
                parent = pos;
                if (value < pos->value)
                    pos = pos->left;
                else if (value > pos->value)
                    pos = pos->right;
                else
                    return false;
            }
            assert(pos == nullptr);

            auto newNode = std::make_shared<Node>(value, nullptr, nullptr, parent, true);
            if (parent == nullptr)
                root = newNode;
            else if (value < parent->value)
                parent->left = newNode;
            else
                parent->right = newNode;
            ++size;
            InsertCase1(newNode);
            return true;
        }

        // TODO
        bool Remove(T value) override
        {
            return true;
        }

        size_t Size() const override
        {
            return size;
        }

        bool Empty() const override
        {
            return size == 0;
        }

        bool Contains(T value) const override
        {
            auto pos = root;
            while (pos != nullptr)
            {
                if (value < pos->value)
                    pos = pos->left;
                else if (value > pos->value)
                    pos = pos->right;
                else
                    return true;
            }
            return false;
        }
    };

}