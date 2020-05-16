## Function

    func student(name: String) -> String {
       return name
    }
    
    print(student(name: "First Program"))
    print(student(name: "About Functions"))



## External Parameter Names

    func pow(firstArg a: Int, secondArg b: Int) -> Int {
       var res = a
       for _ in 1..<b {
          res = res * a
       }
       print(res)
       return res
    }
    
    pow(firstArg:5, secondArg:3)

