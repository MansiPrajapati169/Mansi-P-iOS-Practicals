//1
var num = 100
var power = 2
print(power)
while (power <= num) {
    power *= 2
    if(power <= num) {
        print(power)
    }
}

//2
print("\n")
var rowColumCount = 3
for i in 1...rowColumCount {
    print(String(repeating: "*", count: rowColumCount))
}
print("\n")

var i = 1
while(i <= rowColumCount) {
    print(String(repeating: "*", count: rowColumCount))
    i = i+1
}

//3
print("\n")
var patternCount = 4
for i in 1...patternCount {
     print(String.init(repeating:"*", count: i)+String.init(repeating: " ", count: patternCount-i))
}

//4
for i in 1...patternCount {
     print(String.init(repeating: " ", count: patternCount-i)+String.init(repeating: "*", count: i*2-1))
}

//5
var flag = 0
var number = 5
for j in 2 ... number-1 {
    if(number%j == 0) {
        flag = 1;
        break;
    }
}
if(flag == 1) {
    print("\(number) " + "is not prime")
}
else {
    print("\(number) " + "is prime")
}

let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)
}
numbers.forEach {
    print($0)
}
