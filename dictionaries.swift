## Dictionaries


    var someDict = [Int: String]()
    var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

## Sequence Based Initialization

//Swift 4 allows you to create Dictionary from arrays (Key-Value Pairs.)

    var cities = [“Delhi”,”Bangalore”,”Hyderabad”]
    var Distance = [2000,10, 620]
    
    let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))

## Filtering

//Swift 4 allows you to filter values from a dictionary.

    var closeCities = cityDistanceDict.filter { $0.value < 1000 }
    
    ["Bangalore" : 10 , "Hyderabad" : 620]

## Dictionary Grouping

    var cities = ["Delhi","Bangalore","Hyderabad","Dehradun","Bihar"]
    var GroupedCities = Dictionary(grouping: cities ) { $0.first! }
