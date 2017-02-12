Super simple example of common data structures written with Ruby.

#Data structure
## Array
## Linked List
## Explaination trees
Vocabulary trees
Parent = P
Child = C

Level: Parent is level 1, child 2 etc
```
     1
    /  \
   /    \
  2      2
  |     / \
  |    /   \
  3    3    3
```

Leaf: bottom of the tree
```
     X
    /  \
   /    \
  X      x
  |     / \
  |    /   \
  L    L    L
```

Height: start from 0 for the bottom go to the top
```
     2
    /  \
   /    \
  1      1
  |     / \
  |    /   \
  0    0    0
```

Depth: start from 0 from parent got to bottom
```
     0
    /  \
   /    \
  1      1
  |     / \
  |    /   \
  2    2    2
```

Explain DFS:
- in order
- post order

Explain BFS

## Explaination hashtable

# searching and sorting
## Complexity
- search
- insert
- delete
- access
## List of sorting

```
    A
   / \
  B   C
 / \
D   E
     \
      F
```

The correct answer was: D, F, E, B, C, A

Here are what some of the other traversals would look like on that tree:

BFS: A, B, C, D, E, F

Post-order: D, F, E, B, C, A

In-order: D, B, E, F, A, C

Pre-order: A, B, D, E, F, C

# BST

```
  2
 / \
1   3
```

But it's *unbalanced* and can finish like that

```
  2
 / \
1   3
     \
      4
       \
        5
```

Linear for add/delete/search O(n)
