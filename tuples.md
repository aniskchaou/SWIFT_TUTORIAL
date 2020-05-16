## Tuples

    var error501 = (501, "Not implemented",true)
    print("The code is\(error501.0)")
    print("The definition of error is\(error501.1)")
    
    var error501 = (errorCode: 501, description: "Not Implemented")
    print(error501.errorCode)   // prints 501.
