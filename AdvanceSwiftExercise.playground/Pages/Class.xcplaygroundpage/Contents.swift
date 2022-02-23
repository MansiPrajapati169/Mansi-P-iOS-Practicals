//1
class Emp {
  var ID = ""
  var age = 0
}

var emp = Emp()
emp.ID = "123"
emp.age = 20
print("name:",emp.ID)
print("age:",emp.age)

//2
class Student {
    var name: String?
    var college: String?
    var department: String?
    
    init(name: String, college: String) {
        self.name = name
        self.college = college
    }
    
    init(name: String, department: String) {
        self.name = name
        self.department = department
    }
}

let s1 = Student(name: "Mansi", college: "vgec")
let s2 = Student(name: "Mansi", department: "Computer")
print("Name \(s1.name!), college: \(s1.college!)")
print("Name \(s2.name!), Department: \(s2.department!)")

//3
class Dog {
 var breed = " "
 var price = 0
}

var dog = Dog()
dog.price = 25000
dog.breed = "Golden Retriever"
print("breed: \(dog.breed) price: \(dog.price) ")

//4
class FindSquare {
    func fSquare (num: Int) -> Int {
      var result = num * num
      return result
    }
}

var square = FindSquare()
var res = square.fSquare(num: 5)
print("Square:",res)

//5
class College {
    var name = "vgec "
}

class Student1: College {
    func printDetails(ID: Int){
        print("College \(super.name), ID: \(ID)")
    }
}

class Student2: College {
    func printDetails(ID: Int){
        print("College \(super.name), ID: \(ID)")
    }
}

let st1 = Student1()
st1.printDetails(ID: 1)
let st2 = Student2()
st2.printDetails(ID: 2)

//6
class Base {
    func baseFun() {
            print("Super Class")
    }
}

class Child: Base {
    override func baseFun() {
        super.baseFun()
        print("Sub Class")
    }
}

let b1 = Child()
b1.baseFun()

//7
class CalPower {
  var val: Int
  init(val: Int) {
    self.val = val
  }
    
  func doPower(power: Int) -> Int {
      var p = power
      var result = 1
      while (p != 0) {
          result = result * self.val
          p = p - 1
      }
      return result
  }
}

var num = CalPower(val:5)
print("power od 5^3 : ", num.doPower(power: 3))

//8
class Vehicle {
    var color : String {
        return "black"
       }
    
    var price: Int {
        return 50000
     }
}

class Bike: Vehicle {
    override var color : String {
        return "red"
    }
    
    override var price: Int {
        return 70500
     }
    var wheels = 0
}

class Car: Vehicle {
    override var color : String {
        return "green"
    }
    
    override var price: Int {
        return 80200
     }
    var speed = 0
}

var bike = Bike()
bike.wheels = 2
print("Properties of Bike class")
print("Color : \(bike.color) price : \(bike.price) wheels : \(bike.wheels)")

var car = Car()
car.speed = 85
print("Properties of Car class")
print("Color : \(car.color) price : \(car.price) speed : \(car.speed)")

//9
class Person {
  var name = " "
  init(name: String) {
    self.name = name
  }

  func greet() {
      print("hello \(self.name)")
  }
}

var person = Person(name: "Mansi")
person.greet()

//10
class HelloHii {
    var a: String = ""
}

var example1 = HelloHii()
example1.a = "Hello"

var example2 = example1
example2.a = "Hi"
print(example1.a)
print(example2.a)

