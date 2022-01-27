//1
extension String {
    func addChar(char: Character, index: Int) -> String {
        var newString = Array(self)
        newString.insert(char, at: index)
        return String(newString)
    }
}

var stringHello: String = "Helloorld"
print(stringHello.addChar(char: "W", index: 5))

//2
extension String {
    func replaceChar(char: Character, newchar: Character) -> String {
        var newString = Array(self)
        var index = 0
        
        for i in newString {
            if(i == char) {
                newString[index] = newchar
            }
            index = index+1
        }
        return String(newString)
    }
}
var str: String = "Mansi"
print(str.replaceChar(char: "n",newchar: "j"))

//3
extension String {
    func removeSpace() -> String {
        let words = self.filter {!" ".contains($0) }
        return words
    }
}

let s = "This is a string"
print(s.removeSpace())

//4
extension String {
    func wordCount() -> Int {
        let words =  self.split{!$0.isLetter }
        return words.count
    }
}

let sentence = "Hello i am mansi"
print(sentence.wordCount())


