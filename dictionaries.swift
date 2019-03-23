//Swift 4 dictionaries are used to store unordered lists of values of the same type. Swift 4 puts strict checking which does not allow you to enter a wrong type in a dictionary even by mistake.

//A dictionary key can be either an integer or a string without a restriction, but it should be unique within a dictionary.


//Creating Dictionary
//You can create an empty dictionary of a certain type using the following initializer syntax −
//var someDict = [KeyType: ValueType]()


var someDict = [Int: String]()
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

//Sequence Based Initialization
//Swift 4 allows you to create Dictionary from arrays (Key-Value Pairs.)

var cities = [“Delhi”,”Bangalore”,”Hyderabad”]
var Distance = [2000,10, 620]

let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))

//Filtering
//Swift 4 allows you to filter values from a dictionary.

var closeCities = cityDistanceDict.filter { $0.value < 1000 }

["Bangalore" : 10 , "Hyderabad" : 620]

//Dictionary Grouping

var cities = ["Delhi","Bangalore","Hyderabad","Dehradun","Bihar"]
var GroupedCities = Dictionary(grouping: cities ) { $0.first! }
