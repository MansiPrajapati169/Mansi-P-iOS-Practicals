//1
var num = [1, 2, 3, 1]
print(num.first == num.last)

//2
var number = [1, 2, 3, 4]
var count = number.count * 2
var newArray = [Int](repeating: 0, count:count)
if(number.count >= 1) {
    newArray.last = number[number.count - 1]
    print(newArray)
}
else {
    print("enter valid array")
}

//3
if(number.count>2) {
    let newA = number[0...1]
    print(newA)
}
else {
    let newA = number[0]
    print(newA)
}

//4
print(number.max())

//5
print(number.sorted(by: >))

//6
var numArray = [1, 2, 3, 10, 100]
var divisors = [2, 5]
var newNum : [Int] = [0]
for i in 0...(numArray.count-1) {
    for j in 0...(divisors.count-1) {
        if( numArray[i] % divisors[j] == 0) {
            for k in 0...(newNum.count-1) {
                if(numArray[i] != newNum[k]) {
                    newNum[k] = numArray[i]
                    print(newNum[k])
                }
            }
        }
    }
}

//7
print("Array")
var array = [5, 10, 20, 25]
print(array[0])
print("Before Append: \(array)")
array.append(30)
print("After Append: \(array)")
array.insert(14, at: 2)
print("After Insert: \(array)")

array[2] = 15
print("After Update: \(array)")
let removedValue = array.remove(at: 1)
print("Updated Array: \(array)")
print("Removed value: \(removedValue)")
array.reverse()
print(array)

var emptyArray = [Int]()
print("isEmpty : \(emptyArray.isEmpty)")

var student: [Any] = ["Mansi", 123]
print(student)
