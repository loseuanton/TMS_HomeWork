import UIKit

var array: [(Int, String)] = [(29, "Anton"), (18, "Sergey"), (32, "Maksim"), (24, "Olga")]

print(array)

var newArray: [(Int, String)] = array.map{($0.0 * $0.0, $0.1)}.filter{($0.0 % 2 == 0)}.sorted(){$0.1 > $1.1}

print(newArray)
