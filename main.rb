require_relative 'show_items.rb'
require_relative 'user.rb'
require_relative 'carting.rb'


puts "Hello, Welcome to Guilhermisto's"
showFoods()

puts "What do you like to eat?"
getUserInput(1)

showDrinks()
puts "What do you like to drink?"
getUserInput(2)

showCandys()
puts "What candy do you like?"
getUserInput(3)

showCarting()
sumTotal()

puts ""
puts "Thank you for your preference!"
puts "Bye, bye! See ya!"