import UIKit

var greeting = "Hello, playground"

let alphabet = Set("abcdefghijklmnopqrstuvwxyz")

func isPangram(pangram: [String]) -> String {
    pangram.reduce("") { partialResult, element in
        let elementSet = Set(element)
        if alphabet.subtracting(elementSet).isEmpty {
           return partialResult + "1"
        } else {

           return partialResult + "0"
        }
    }
}

let result = isPangram(pangram: ["thequickbrownfoxjumpsoverthelazydog", "test", "abcdefghijklmnopqrstuvwxyz", "thequickbrownfoxjumpedoverthelazydog"])

print("💭", result)
