//1
var name : String = "Simform"
if(name.count < 2) {
    print(name)
}
else {
    print(name.prefix(2))
}

//2
if(name.count >= 2) {
    name.removeFirst()
    name.removeLast()
    print(name)
}
else {
    print("enter string with length >= 2")
}

//3
var string = "Swift"
var str = "Examples"
if(name.count >= 1) {
    string.removeFirst()
    str.removeFirst()
    let newString = string + str
    print(newString)
}
else {
    print("enter string with length >= 1")
}

//4
if(name.count >= 1) {
    var str = "Swift"
    let firstElement = str.removeFirst()
    let secondElement = str.removeFirst()
    str.append(firstElement)
    str.append(secondElement)
    print(str)
}
else {
    print("enter string with length >= 1")
}

//5
var language = "Swift"
var stringStart = "Sw"
var result = language.starts(with: stringStart)
print( "\(result)" )

//6
var count = 3
if(name.count >= count) {
    var str = "Simform solutions"
    var combined = str.prefix(count) + str.suffix(count)
    print(combined)
}
else {
    print("enter string with length >=n")
}

//7
let empty = ""
print(empty.isEmpty)
let companyName = "Simform Solutions"
print(companyName.hasPrefix("Si"))
print(companyName.hasSuffix("ss"))
print(companyName.prefix(2))
print(companyName.suffix(2))
print(companyName.uppercased())
print(companyName.lowercased())
print(companyName.dropFirst())
print(companyName.dropFirst(3))
print(companyName.dropLast(3))

var random = "1235"
print(random.randomElement())
print(random.count)
print(String(random.reversed()))
random.insert("0", at: random.startIndex)
print(random)

let charA = "A" as Character
print(charA.isASCII)
print(charA.asciiValue)

let whiteSpaceChar = "\n" as Character
print(whiteSpaceChar.isWhitespace)
print(whiteSpaceChar.isNewline)

var word = "welcome user"
let start = word.startIndex
let end = word.endIndex
print(word[start])
print(word[word.index(after: start)])
print(word[word.index(before: end)])
print(word[word.index(start, offsetBy: 8)])
print(word[word.index(end, offsetBy: -4)])

let lastIndex = word.index(word.startIndex,offsetBy: 7)
word.replaceSubrange(...lastIndex,with: "hello ")
print(word)


