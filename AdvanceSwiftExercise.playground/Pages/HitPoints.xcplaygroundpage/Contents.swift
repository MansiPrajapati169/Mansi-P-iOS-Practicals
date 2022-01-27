import Darwin
var hp = 2

if hp < 20 {
    hp = 20
    print(hp)
}
else if hp == 0{
    print("dead")
}
else {
    let fractionNum = Double(hp) / 10.0
    let roundNum = Int(ceil(fractionNum))
    hp = roundNum * 10
}

