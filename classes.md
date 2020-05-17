## classes

    class student {
       var studname: String
       var mark: Int 
       var mark2: Int 
    }




## Identical to Operators Not Identical to Operators

//Operator used is (===)	Operator used is (!==)
//Returns true when two constants or variables pointing to a same instance	Returns true when two constants or variables pointing to a different instance
 

    class SampleClass: Equatable {
       let myProperty: String
       init(s: String) {
          myProperty = s
       }
    }
    
    func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
       return lhs.myProperty == rhs.myProperty
    }
    
    let spClass1 = SampleClass(s: "Hello")
    let spClass2 = SampleClass(s: "Hello")
    
    spClass1 === spClass2 // false
    print("\(spClass1)")
    
    spClass1 !== spClass2 // true
    print("\(spClass2)")
