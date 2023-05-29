$foods = [
    { item: "Hotdog", price: 10.00 },
    { item: "Sandwich", price: 15.00 },
    { item: "Fish and Chips", price: 12.00 },
    { item: "French Fries", price: 7.00 }
]

$drinks = [
    { item: "Orange Juice", price: 5.00 },
    { item: "Strawberry Juice", price: 5.00 },
    { item: "Watermelon Juice", price: 5.00 },
    { item: "Cola", price: 6.00 },
    { item: "Water", price: 2.50 },
]

$candys = [
    { item: "Cake", price: 8.00 },
    { item: "Pudim", price: 5.00 },
    { item: "Ice cream", price: 4.00 },
]

$count = 1
$userInput = 0;
$userCarting = [];

def showFoods()
    $count = 1
    for item in $foods do
        puts "[#{$count}] #{item[:item]} $#{item[:price]}"
        $count += 1
    end
end

def showDrinks()
    $count = 1
    for item in $drinks do
        puts "[#{$count}] #{item[:item]} $#{item[:price]}"
        $count += 1
    end
end

def showCandys()
    $count = 1
    for item in $candys do
        puts "[#{$count}] #{item[:item]} $#{item[:price]}"
        $count += 1
    end
end

def getUserInput(typeItem)
    puts "Type the item index:"
    $userInput = gets.chomp.to_i
    pushUserCarting(typeItem, $userInput)
    puts ""
end

def pushUserCarting(typeItem, index)
    case typeItem
    when 1
        $userCarting.push($foods[index - 1])
    when 2
        $userCarting.push($drinks[index - 1])
    else 
        $userCarting.push($candys[index - 1])
    end
end

def showCarting
    puts "Your Order:"
    for item in $userCarting do
        puts "#{item[:item]} R$#{item[:price]}"
    end
end

def sumTotal()
    total = 0
    for item in $userCarting do
        total += item[:price]
    end
    puts "Total: R$#{total}"
end



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

puts""
puts "Thank you for your preference!"
puts "Bye, bye! See ya!"