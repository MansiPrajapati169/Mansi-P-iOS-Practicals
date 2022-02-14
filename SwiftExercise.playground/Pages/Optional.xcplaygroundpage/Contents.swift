//1
let num: Int?
num = 5
print(num)

var str:String? = nil
str = "Hello World!"
print(str)

//2
//explicit
let optional: Int? = 1
let forceUnwrap: Int = optional!
print(forceUnwrap)

//implicit
var text: String! = "Hello"
let forceUnwrapString: String = text
print(forceUnwrapString)

//3
var message: String?
if message != nil {
    print(message!)
}
else {
    print("nil value")
}

//4
if let temp = message {
    print("val : \(temp)")
}
else {
    print("nil value")
}

//5
func testNill() {
    guard let temp = message else {
        print("nil value")
        return
    }
    print("It has some value \(temp)")
}
testNill()

//6
//var val: Int?
var val: Int? = 7
let dVal = 3
let nilOp: Int = val ?? dVal
print(nilOp)
