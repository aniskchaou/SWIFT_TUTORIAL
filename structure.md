## structure

Swift 4 provides a flexible building block of making use of constructs as Structures. By making use of these structures once can define constructs methods and properties.


    struct MarkStruct {
       var mark1: Int
       var mark2: Int
       var mark3: Int
    }

## Accessing the Structure and its Properties


    struct studentMarks {
       var mark1 = 100
       var mark2 = 200
       var mark3 = 300
    }
    
    let marks = studentMarks()
    print("Mark1 is \(marks.mark1)")
    print("Mark2 is \(marks.mark2)")
    print("Mark3 is \(marks.mark3)")


