//1
enum passwordValidation: Error {
    case emptyPassword
    case shortPassword
}

func userTest(password: String) throws {
    if password == " " {
       throw passwordValidation.emptyPassword
    }
    if password.count <= 8 {
        throw passwordValidation.shortPassword
    }
    else {
        print("password is valid")
    }
}

do {
    try userTest(password:" ")
}
catch passwordValidation.shortPassword
{
    print("Password too short")
}
catch passwordValidation.emptyPassword
{
    print("Empty password")
}

//2
enum ShoppingCart: Error {
    case outOfStock
}

func checkQuantity(quantity: Int,availQuantity: inout Int) throws {
    if quantity > availQuantity {
        throw ShoppingCart.outOfStock
    }
    else {
        availQuantity -= quantity
        print("Purchased : \(quantity) products, Available : \(availQuantity) products")
    }
}

var total: Int = 100
do {
    try checkQuantity(quantity: 25, availQuantity: &total)
}
catch ShoppingCart.outOfStock {
    print("Prouduct is out of stock")
}
