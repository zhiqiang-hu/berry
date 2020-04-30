l = [1, 2, 3, 4, 5]
assert(l[0] == 1)
assert(l[1] == 2)
assert(l[2] == 3)
assert(l[3] == 4)
assert(l[4] == 5)
assert(str(l) == '[1, 2, 3, 4, 5]')

it = l.iter()
assert(it() == 1)
assert(it() == 2)
assert(it() == 3)
assert(it() == 4)
assert(it() == 5)

l.insert(0, 10)
assert(l[0] == 10)
assert(l.size() == 6)
l.remove(0)
assert(l.size() == 5)
assert(l[0] == 1)
l.setitem(0, 42)
assert(l[0] == 42)
assert(l.item(2) == 3)
l.resize(10)
assert(l.size() == 10)
assert(l.tostring() == '[42, 2, 3, 4, 5, nil, nil, nil, nil, nil]')

assert(([] == []) == true)
assert(([] != []) == false)
assert(([1] == [1]) == true)
assert(([1] != [1]) == false)
assert(([1] == [0]) == false)
assert(([1] != [0]) == true)
assert(([1, 2, 3] == [1, 2, 3]) == true)
assert(([1, 2, 3] != [1, 2, 3]) == false)
assert(([1, 2, 3] == [1, 2, 4]) == false)
assert(([1, 2, 3] != [1, 2, 4]) == true)
assert(([1, 2, ['w']] == [1, 2, ['w']]) == true)
assert(([1, 2, ['w']] != [1, 2, ['w']]) == false)
assert(([1, 2, ['w']] == [1, 2, ['z']]) == false)
assert(([1, 2, ['w']] != [1, 2, ['z']]) == true)
assert(([1, 2, ['w']] == [1, 2, []]) == false)
assert(([1, 2, ['w']] != [1, 2, []]) == true)