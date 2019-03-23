
//deinisialisation
//Before a class instance needs to be deallocated 'deinitializer' has to be called to deallocate the memory space. The keyword 'deinit' is used to deallocate the memory spaces occupied by the system resources. Deinitialization is available only on class types.

var counter = 0; // for reference counting
class baseclass {
   init() {
      counter++;
   }
   deinit {
      counter--;
   }
}
var print: baseclass? = baseclass()

print(counter)
print = nil
print(counter)

var counter = 0; // for reference counting

class baseclass {
   init() {
      counter++;
   }
   deinit {
      counter--;
   }
}
var print: baseclass? = baseclass()
print(counter)
print(counter)



