require_relative 'carting.rb'


$userCarting = [];

def pushCarting(typeItem, index)
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
    puts "> Your Order:"
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