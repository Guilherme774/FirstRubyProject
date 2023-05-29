$userInput = 0

def getUserInput(typeItem)
    puts "Type the item index:"
    $userInput = gets.chomp.to_i
    pushCarting(typeItem, $userInput)
    puts ""
end