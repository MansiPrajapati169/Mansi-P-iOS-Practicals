var code : [String: String] = ["a" : "b", "b" : "c", "c" : "d", "d" : "e", "e" : "f", "f" : "g", "g" : "h", "h" : "i", "i" : "j", "j" : "k", "k" : "l", "l" : "m", "m" : "n", "n" : "o", "o" : "p", "p" : "q", "q" : "r", "r" : "s", "s" : "t", "t" : "u", "u" : "v", "v" : "w", "w" : "x", "x" : "y", "y" : "z", "z" : "a"]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var newString: String = ""
for j in encodedMessage {
    if(String(j) == " ") {
        newString += " "
    }
    for (key, value) in code {
        if(value == j.description) {
                newString.append(key)
        }
    }
}
print(newString)

//2
var people: [[String:String]] = [["firstName": "Calvin","lastName": "Newton"],
                                 ["firstName": "Garry","lastName": "Mckenzie"],
                                 ["firstName": "Leah","lastName": "Rivera"],
                                 ["firstName": "Sonja","lastName": "Moreno"],
                                 ["firstName": "Noel","lastName": "Bowen"]]
var fname = [String]()
for p in people {
    if let firstName = p["firstName"] {
        fname.append(firstName)
    }
}
print(fname)

//3
var fullNames = [String]()
for x in people   {
    if let firstName = x["firstName"], let lastName = x["lastName"] {
        fullNames.append(firstName+" "+lastName)
    }
}
print(fullNames)

//4
var peoples: [[String:Any]] = [ ["firstName": "Calvin","lastName": "Newton","score": 13],
                                ["firstName": "Garry","lastName": "Mckenzie","score": 12],
                                ["firstName": "Leah","lastName": "Rivera","score": 10],
                                ["firstName": "Sonja","lastName": "Moreno","score": 3],
                                ["firstName": "Noel","lastName": "Bowen","score": 16]]
//4
var temp : Int
var small : Int = 12345
for p in peoples {
    if let score = p["score"] {
        temp = score as! Int
        if (temp < small) {
            small = temp
        }
    }
}
for p in peoples {
    if let score = p["score"],let firstName = p["firstName"], let lastName = p["lastName"] {
        temp = score as! Int
        if temp as! Int == small {
            print("\(firstName) \(lastName)")
        }
    }
}

//5
for p in peoples {
    if let score = p["score"],let firstName = p["firstName"], let lastName = p["lastName"] {
        print(firstName,lastName,"-",score)
    }
}

//6
var num = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var counts: [Int: Int] = [:]
for item in num {
    counts[item] = (counts[item] ?? 0) + 1
}
print(counts)


//6
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
let dictionary = numbers.reduce(into: [:]) { counts, number in
    counts[number, default: 0] += 1
}
for (k,v) in Array(dictionary).sorted(by: {$0.0 < $1.0}) {
    print("\(k):\(v)",terminator: " ")
}
