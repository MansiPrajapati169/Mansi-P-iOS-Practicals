//1
class Rectangle {
    var width: Double = 0.0
    var height: Double = 0.0
    var area: Double {
        width * height
    }
}

let rect = Rectangle()
rect.width = 20.23
rect.height = 10.23
print(rect.area)
//rect.area = 4

//2
class Circle {
    var pi = 3.14
    var r = 0.0
    var area: Double {
        get {
            return pi*r*r
        }
        set(newval){
            r = newval
        }
    }
}

var obj = Circle()
obj.r = 3
print("area",obj.area)
obj.area = 5
print("area",obj.area)

//3
class Student {
    var name: String = ""
    var age: Int = 0
}

var s = Student()
s.name = "Mansi"
s.age = 20
print("Name:", s.name)
print("Age:", s.age)

//4
class Company {
    private var name: String = " "
    
    func printName(name: String) {
        self.name = name
        print("Company name :",name)
      }
}

let comp = Company()
comp.printName(name: "Simform")
//comp.name = "Way2Web"

//5
class Person {
    var name: String = ""
    var id: Int = 0
    
    init(name: String,id: Int){
        self.name = name
        self.id = id
    }
}

var person1 = [Person(name: "Mansi",id: 20),Person(name: "Bansi",id: 21)]
for i in person1 {
    print("Name:",i.name,"id:",i.id)
}

//6
var name: String = "Bansi" {
    willSet {
        print("Name will from \(name) to \(newValue)")
    }
    
    didSet {
        print("Name changed from \(oldValue) to \(name)")
    }
}
name = "Mansi"

//7
class Hello {
    init() {
        print("Hello")
    }
}

class Greet {
    lazy var hi = Hello()
    
    init() {
        print("Greet initialized")
    }
}

let greet = Greet()
greet.hi

//8
class Persons {
    var name = " "
    var occupation = " "
    
    init(name: String,occupation: String) {
        self.name = name
        self.occupation = occupation
    }
}

class Students : Persons {
    var college = " "
    
    init(name: String,occupation: String,college: String) {
        super.init(name: name,occupation: occupation)
        self.college = college
    }
    
    func printStudentDetails() {
        print("student details")
        print("name: \(super.name) occupation: \(super.occupation) college: \(college)")
    }
}

class Employees : Persons {
    var company = " "
    
    init(name: String,occupation: String,company: String) {
        super.init(name: name,occupation: occupation)
        self.company = company
    }
    
    func printEmployeeDetails() {
        print("employee details")
        print("name: \(super.name) occupation: \(super.occupation) company: \(company)")
    }
}

var student = Students(name: "Mansi",occupation: "student",college: "VGEC")
student.printStudentDetails()

var employee = Employees(name: "Stuti",occupation: "iOS developer",company: "Simform")
employee.printEmployeeDetails()

//9
struct MulFive {
  var n1 = 0
    
  mutating func numMul(n: Int) {
      n1 = n * 5
      print("num :",n1)
  }
}

var m = MulFive()
m.numMul(n: 10)

//10
class Vehicle {
    func printClass() {
        print("inside Vehicle class")
    }
}

class Car : Vehicle  {
    override func printClass() {
        super.printClass()
        print("inside Car class")
    }
}

let car = Car()
car.printClass()

//11
class AddNum {
    class func add(num:Int)->Int {
        return (num + 5)
    }
}

struct SubNum {
    static func sub(num:Int)->Int {
        return (num - 5)
    }
}

let addans = AddNum.add(num:10)
let subans = SubNum.sub(num:20)
print("addition:",addans)
print("sub:",subans)

//12
class MultiplyDivide {
    class func multiply(num:Int)->Int {
        return (num * 5)
    }
    
    static func divide(num:Int)->Int {
        return (num / 5)
    }
}
class ChildMulDivide : MultiplyDivide{
    override class func multiply(num:Int)->Int {
        return (num * 10)
    }
    
    /*override static func divide(num:Int)->Int {
        return (num / 10)
    }*/
}

print("parent multiplication:",MultiplyDivide.multiply(num: 5))
print("parent division:",MultiplyDivide.divide(num: 10))
print("child multiplication:",ChildMulDivide.multiply(num: 10))

//13
class daysofaweek {
    var days = ["Sunday","Monday", "Tuesday", "Wednesday","Thursday", "Friday","saturday"]
    
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set(newValue) {
            self.days[index] = newValue
        }
    }
}

var p = daysofaweek()
print(p[0])

//14
class NthChar {
    var word = "HelloWorld"
    
    subscript(index: String.Index) -> Character {
        get {
            return word[index]
        }
    }
}

var charobj = NthChar()
var pos = charobj.word.index(charobj.word.startIndex, offsetBy: 1)
print(charobj[pos])

//15
class RangeChar {
    var word = "HelloWorld"
    
    subscript(range: ClosedRange<String.Index>) -> String {
            get {
                return String(word[range])
            }
    }
}

var rangechar = RangeChar()
var start = rangechar.word.index(rangechar.word.startIndex, offsetBy: 1)
var end = rangechar.word.index(rangechar.word.startIndex, offsetBy: 4)
print(rangechar[start...end])

//16
class ReturnElement {
    let numbers = [1,2,3,4]
    
    func returnNum(sRange: Int,ERange: Int) {
        for i in sRange...ERange {
          print(numbers[i])
        }
    }
}

var arr = ReturnElement()
arr.returnNum(sRange: 0, ERange: 2)

//17
class KeyVal {
    var dict: [Int: String] = [1:"Hello", 2:"Hi"]
    subscript(key: Int) -> String {
        return dict[key] ?? "Nil"
    }
}

var keyVal = KeyVal()
print(keyVal[1])

//18
class PersonDetails {
    var name: String
    var age: Int
    var birthdate : String
    
    init(name: String,age: Int,birthdate: String) {
        self.name = name
        self.age = age
        self.birthdate = birthdate
    }
    
    subscript(Name: String)-> (name: String, age: Int, birthdate: String) {
        get {
            return (self.name, self.age, self.birthdate)
        }
    }
}

var persons = PersonDetails(name: "Mansi",age: 20, birthdate: "16-sep-2001")
print(persons["Mansi"])

//19
class Song {
    var singer = " "
    var composer = " "
    
    init(singer: String, composer: String) {
        self.singer = singer
        self.composer = composer
    }
}

class HipHop : Song{
    var element = " "
    
    init(singer: String, composer: String, element: String) {
        super.init(singer: singer, composer: composer)
        self.element = element
    }
    
    func printHiphopDetails() {
        print("Hiphop details")
        print("song: \(super.singer) composer: \(super.composer) element: \(element)")
    }
}

class Classical : Song {
    var melodyType = " "
    
    init(singer: String, composer: String, melodyType: String) {
        super.init(singer: singer, composer: composer)
        self.melodyType = melodyType
    }
    
    func printClassicalDetails() {
        print("Classical details")
        print("song: \(super.singer) composer: \(super.composer) melody type: \(melodyType)")
    }
}

var hiphop = HipHop(singer: "Drake", composer: "Nathan Scherrer", element: "Beatboxing" )
hiphop.printHiphopDetails()

var classical = Classical(singer: "Kishore Kumar ", composer: "Laxmikant Pyarelal", melodyType: "Color Melodies")
classical.printClassicalDetails()

//20
class Product {
    var name: String = " "
    var price: Int = 0
}

var product = Product()
product.name = "pen"
product.price = 20
print("Name:", product.name)
print("Price:", product.price)
