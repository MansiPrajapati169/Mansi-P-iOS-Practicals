//1
enum Weekday : Int {
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    var shortName : String {
        switch self {
            case .Monday :
                return "Mon"
            case .Tuesday :
                return "Tue"
            case .Wednesday :
                return "Wed"
            case .Thursday :
                return "Thu"
            case .Friday :
                return "Fri"
            case .Saturday :
                    return "Sat"
            case .Sunday :
                    return "Sun"
        }
    }
}

if let day = Weekday(rawValue: 5) {
    print("Day : \(day), short Name : \(day.shortName)")
}
else {
    print("Please enter valid choice")
}

//2
enum Months {
    case January, February, March, April, May, June, July, August, September, October, November, December
    func returnDays() -> Int  {
        switch self {
            case .January, .March, .May, .July, .August, .October, .December:
                return 31
            case .February:
                return 28
            case .April, .June, .September, .November  :
                return 30
        }
    }
}

let days = Months.September.returnDays()
print("days of september",days)

//3
enum Color : Int {
    case Red = 1, Green, Blue, Black, White
}

var colorRaw = Color.Blue;
print("Blue raw value :" ,colorRaw.rawValue)

//4
enum Car : String {
    case color = "red"
    case company = "Hyundai"
}

var carDetails = Car.company;
print("Car Company :" ,carDetails.rawValue)

//5
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

var planet = Planet.venus
print("Venus raw Value:", planet.rawValue)

//6
enum LivingThings: String, CaseIterable { case Human = "Mansi"; case Dog = "Miri"; case Cat = "Jordan"}

LivingThings.allCases.forEach {
    print($0.rawValue)
}

//7
enum Student {
  case name(String)
  case age(Int)
}

var s1 = Student.name("Mansi")
print(s1)
var s2 = Student.age(20)
print(s2)

//8
enum Switch : String {
    case On = "on", Off = "off"
    var shortName : String {
        switch self {
            case .On :
                return "on"
            case .Off :
                return "off"
        }
    }
}

if let status = Switch(rawValue: "on" ) {
    print("status : \(status)")
}
else {
    print("Please enter valid choice")
}
