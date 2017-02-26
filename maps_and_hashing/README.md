# Hash table
It's a really simple and performant data structure:


|        | Average | Worst |
| ------ | ------- | ----- |
| Search | O(1)    | O(N)  |
| Insert | O(1)    | O(N)  |
| Delete | O(1)    | O(N)  |



It has a different name:
- hash maps
- maps
- dictionaries
- associative arrays

This data structure is really good to, realation item/item (item as key and value)
filtering out duplication, caching/memorizing data

## Load factor

Load factor = Number of iterms in hash table / Total numbers of slots

[nil, nil, 20]
the load factor here is 1/3

if you have 100 items and 100 slots, you have a load factor of 1
if you have 100 items and 50 slots, you have a load factor of 2

if it's greate than one, it's bad as your big O with be O(N) and with a hash
table we want O(1). So you should resize the array to get back a load factor of
1.

fewer colision

## Hash Function
A good hash function avoid the colision with a good distribution.
A bad one will craete colision for example, if you hash function set all
the element at the id 1 of your array.
