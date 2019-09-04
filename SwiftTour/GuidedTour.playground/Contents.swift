import Cocoa

print ("Hello, world!")

var myVariable=42
myVariable=50
let myConstant=42

let implicitInteger = 70
let implicitDouble=70
let explicitDouble: Double=70

//experiment
let a: Float = 4

let label="the width is "
let width=94
let widthLabel=label+String(width)

let apples = 3
let oranges = 5
let aa: Double = 1.2
let appleSummary="i have \(apples) apples"
let fruitSummary = "I have \(Double(apples) + Double(oranges) + aa) pieces of fruit"

let Quotation = """
I said "i have \(apples) apples"
And then I said "I have \(apples + oranges) pieces of fruit)"
"""

var shoppingList = ["catfish","water","tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm":"Captain",
    "Kaylee":"Mechanic",
]

occupations["Jayne"] = "Public Relations"

print(occupations)
shoppingList.append("blud paint")
print(shoppingList)

let emptyArray = [String]()
let emptyDictionary=[String: Float]()

shoppingList = []
occupations=[:]

let individualScores=[75,43,103,87,12]
var teamScore=0
for score in individualScores{
    if score>50{
        teamScore+=3
    }else{
        teamScore+=1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString==nil)
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName{
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String="John Appleseed"
let informalGreeting="Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable{
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
print("Everything tastes good in soup.")
}

let interestingNumbers=[
    "Prime": [2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
    "Cube":[1,9,27,64,125],
]
var largest=0
for (_, numbers) in interestingNumbers{
    for number in numbers{
        if number>largest{
            largest=number
        }
    }
}
print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat{
    m*=2
}while m < 100
print(m)

var total = 0
for i in 0..<4{
    total += i
}
print(total)

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person:"Bob",day:"Tuesday")

func greet(_ person: String,on day:String)->String{
    return "Hello \(person), today is \(day)."
}
greet("John", on:"Wednesday")

func calculateStatistics(scores: [Int])->(min:Int, max:Int, sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if score>max{
            max=score
        }else if score < min{
            min=score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.1)
print(statistics)

func returnFifteen() ->Int{
    var y = 10
    func add(){
        y+=5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int)->Int){
    func addOne(number: Int)->Int{
        return 1+number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int)->Bool)->Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20,19,7,12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({(number: Int)->Int in
    let result:Int
    if(number % 2 == 0){
        result = 3 * number
    }else{
         result = 0 * number
    }
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

let sortedNumbers = numbers.sorted{ $0 > $1 }
print(sortedNumbers)

class Shape {
    var numberOfSides = 0
    func simpleDescription()->String{
        return"A shape with \(numberOfSides) sides."
    }
    let aaa = 0
    func aaaa(aaa:Int)->Int{
        return aaa
    }
}

var shape=Shape()
shape.numberOfSides = 7
var ShapeDescription = shape.simpleDescription()

class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape{
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class NamedShapecalledCircle:NamedShape{
    var radius: Double
    
    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
    }
    func area()->Double{
        return radius * radius * 3.14
    }
    
    override func simpleDescription() -> String {
        return "A radius of square is \(radius)"
    }
}
let test2 = NamedShapecalledCircle(radius:2,name: "test square")
test2.area()
test2.simpleDescription()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name:name)
        numberOfSides=3
    }
    
    var perimeter: Double{
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength=newValue / 3.0
        }
    }
    override func simpleDescription() -> String{
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "triangle")
print(triangle.perimeter)
triangle.perimeter=9.9
print(triangle.sideLength)

class TriangleAndSquare{
    var triangle: EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square{
        willSet{
            triangle.sideLength=newValue.sideLength
        }
    }
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square=Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

enum Rank: Int{
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String{
        switch self{
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 3){
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit{
    case spades, hearts,diamonds, clubs
    
    func simpleDescription() -> String{
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color()->String{
        switch self{
        case .spades,.clubs:
            return "black"
        case .hearts,.diamonds:
            return "red"
            
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartColor = hearts.color()
let spades = Suit.spades
let spadesColor = spades.color()

enum ServerResponse{
    case result(String,String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("out of cheese.")

switch success{
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at\(sunset).")
case let .failure(message):
    print("Failure... \(message)")
default:
    print("Default")
}

struct Card{
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String{
        return "The \(rank.simpleDescription())of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

protocol ExampleProtocol{
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol{
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust(){
        simpleDescription += " Now 100% adjusted."
    }
}
var aaa = SimpleClass()
aaa.adjust()
let aDescription = aaa.simpleDescription

struct SimpleStructure: ExampleProtocol{
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol{
    var simpleDescription: String{
        return"The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print (7.simpleDescription)

let protocolValue: ExampleProtocol = aaa
print(protocolValue.simpleDescription)

enum PrinterError: Error{
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner"{
        throw PrinterError.noToner
    }
return "job sent"
}

do{
    let printerResponse = try send(job: 1040, toPrinter: "BiSheng")
    print(printerResponse)
}catch{
    print(error)
}

do{
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
}catch PrinterError.onFire{
    print("I'll just put this over here, with the rest of the fire.")
}catch let printerError as PrinterError{
    print("Printer error:\(printerError).")
}catch{
    print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool{
    fridgeIsOpen = true
    defer{
        fridgeIsOpen = true
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
        var result = [Item]()
    for _ in 0..<numberOfTimes{
        result.append(item)
    }
    return result
}
makeArray(repeating:"knock", numberOfTimes:4)

enum OptionalValue<Wrapped>{
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U)-> Bool
        where T.Element: Equatable, T.Element == U.Element
{
        for lhsItem in lhs{
            for rhsItem in rhs{
                if lhsItem == rhsItem{
                    var list = [lhsItem]
                    return true
                }
            }
        }
        return false
}
anyCommonElements([1,2,3], [3])
