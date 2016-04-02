# creare una PILA STACK (LIFO)
stack = []; stack << "one"; stack.push("two")
# e prelevo ultimo inserito
puts stack.pop
# => two

# creo una CODA QUEUE (FIFO)
queue = []; queue.push "one"; queue.push "two"
# prelevo primo elemento
puts queue.shift
# => one

# sort per ordinare, reverse per invertire
a = [5,3,4,2].sort!.reverse!
# => [5,4,3,2]
p a

# sample PRELEVA ELE A CASO
p a.sample(2)
# => [2, 4]

# array espandibile, aggiungo ele in un posizione che non c'è
a[6] = 33
p a
# => [5, 4, 3, 2, nil, nil, 33]