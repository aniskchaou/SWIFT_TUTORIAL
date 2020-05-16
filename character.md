## Character

    let char1: Character = "A"
    let char2: Character = "B"
    
    print("Value of char1 \(char1)")
    print("Value of char2 \(char2)")

## Empty Character Variables

It is not possible to create an empty Character variable or constant which will have an empty value. 

// Following is wrong in Swift 4

    let char1: Character = ""
    var char2: Character = ""
    
    print("Value of char1 \(char1)")
    print("Value of char2 \(char2)")

## Accessing Characters from Strings


    for ch in "Hello" {
       print(ch)
    }


## Concatenating Strings with Characters

    var varA:String = "Hello "
    let varB:Character = "G"
    varA.append( varB )
    print("Value of varC = \(varA)")
