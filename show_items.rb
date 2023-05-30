require_relative 'data.rb'


$count = 1

def showFoods()
    $count = 1

    puts "> Foods"
    for item in $foods do
        puts "[#{$count}] #{item[:item]} $#{item[:price]}"
        $count += 1
    end
end

def showDrinks()
    $count = 1

    puts "> Drinks"
    for item in $drinks do
        puts "[#{$count}] #{item[:item]} $#{item[:price]}"
        $count += 1
    end
end

def showCandys()
    $count = 1

    puts "> Candys"
    for item in $candys do
        puts "[#{$count}] #{item[:item]} $#{item[:price]}"
        $count += 1
    end
end