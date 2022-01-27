import CoreGraphics
//1
struct Work {
  var location: String
  var hours: Int
  var projectName : [String]
    
  func printProjectName() -> [String] {
    return projectName
  }
}

var result = Work(location :"Ahmedabad",hours: 8,projectName : ["iHealth","DietDiary","FoodCart"])
print(result.printProjectName())

//2
struct Employee {
    let empName : String
    var empID : Int
}

var emp = Employee(empName: "Mansi", empID : 20)
print("Name :", emp.empName)
print("ID :", emp.empID)

struct CalArea {
   var area: Double
   init(length: Double) {
      area = length * length
   }
    
   init(length: Double, width: Double) {
      area = length * width
   }
}

let squareArea = CalArea(length: 5.0)
print("square area is: \(squareArea.area)")
let rectArea = CalArea(length: 5.0, width: 3.0)
print("rect area is: \(rectArea.area)")

//3
struct Size {
    var width = 3.0, height = 3.0
}

let withParam = Size(width: 2.0, height: 2.0)
print(withParam.width, withParam.height)
let withoutParam = Size()
print(withoutParam.width, withoutParam.height)

//4
struct EvenOdd {
    var i = 0
    var even = [Int]()
    var odd = [Int]()
    
    init(arr: [Int]) {
        for i in arr {
            if(i % 2 == 0){
                self.even.append(i)
            }
            else {
                self.odd.append(i)
            }
        }
    }
}

var ans = EvenOdd(arr : [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
print("Even :",ans.even)
print("Odd :",ans.odd)

//5
struct Person {
    var name: String
    var age: Int
    var gender : String
}

var person1 = [Person(name: "Mansi",age: 20, gender:"Female"),Person(name: "Bansi",age: 21, gender:"Female")]
var i = 0
for i in person1 {
    print("Name:",i.name,"Age:",i.age,"Gender:",i.gender)
}

//6
struct HelloHii {
    var a: String
}

var example1 = HelloHii(a:"Hey")
example1.a = "Hello"

var example2 = example1
example2.a = "Hi"
print(example1.a)
print(example2.a)

//7
class StudentClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var studentC = StudentClass(name: "Mansi")
var studentCRef = studentC
studentCRef.name = "Stuti"
print(studentC.name)
print(studentCRef.name)

struct StudentStruct {
    var name: String
}

var studentS = StudentStruct(name: "Mansi")
var studentSRef = studentS
studentSRef.name = "Stuti"
print(studentS.name)
print(studentSRef.name)
