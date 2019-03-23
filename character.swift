//A character in Swift is a single character String literal, addressed by the data type Character.
let char1: Character = "A"
let char2: Character = "B"

print("Value of char1 \(char1)")
print("Value of char2 \(char2)")

//If you try to store more than one character in a Character type variable or constant, then Swift 4 will not allow that.

// Following is wrong in Swift 4
let char: Character = "AB"
print("Value of char \(char)")


//Empty Character Variables
//It is not possible to create an empty Character variable or constant which will have an empty value. 

// Following is wrong in Swift 4
let char1: Character = ""
var char2: Character = ""

print("Value of char1 \(char1)")
print("Value of char2 \(char2)")

//Accessing Characters from Strings
//As explained while discussing Swift 4's Strings, String represents a collection of Character values in a specified order. So we can access individual characters from the given String by iterating over that string with a for-in loop −

for ch in "Hello" {
   print(ch)
}


//Concatenating Strings with Characters

var varA:String = "Hello "
let varB:Character = "G"
varA.append( varB )

print("Value of varC = \(varA)")
