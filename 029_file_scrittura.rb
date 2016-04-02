# scrittura file
File.open("test1.txt", "w") do |file|
  file.puts "Prima riga"
  file.puts "Seconda riga"
end