//structure
//Swift 4 provides a flexible building block of making use of constructs as Structures. By making use of these structures once can define constructs methods and properties.
//Definition of a Structure

struct MarkStruct {
   var mark1: Int
   var mark2: Int
   var mark3: Int
}

//Accessing the Structure and its Properties
//The members of the structure are accessed by its structure name. The instances of the structure are initialized by the 'let' keyword.

struct studentMarks {
   var mark1 = 100
   var mark2 = 200
   var mark3 = 300
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")


//Students marks are accessed by the structure name 'studentMarks'. The structure members are initialized as mark1, mark2, mark3 with integer type values. Then the structure studentMarks() is passed to the 'marks' with 'let' keyword. Hereafter 'marks' will contain the structure member values. Now the values are printed by accessing the structure member values by '.' with its initialized names.

struct MarksStruct {
   var mark: Int

   init(mark: Int) {
      self.mark = mark
   }
}

var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct     // aStruct and bStruct are two structs with the same value!
bStruct.mark = 97

print(aStruct.mark)      // 98
print(bStruct.mark)      // 97

