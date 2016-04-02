# esempio uso di BLOCCHI COME PARAMETRI
# DI METODI
1.times { puts "Hello World!" }
# => Hello World!

# blocco in do end
2.times do |index|
  if index > 0
    puts index
  end
end
# => 1

# stesso metodo sopra ma in single line
2.times { |index| puts index if index > 0 }
# => 1