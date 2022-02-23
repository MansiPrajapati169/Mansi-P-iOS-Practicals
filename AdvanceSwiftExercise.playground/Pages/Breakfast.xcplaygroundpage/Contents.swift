enum BaconEggsAgeValidation: Error {
    case throwBaconEggs,throwBacon,throwEggs
}

func userTest(baconAge: Int,eggsAge: Int) throws {
    if baconAge > 21 && eggsAge > 7 {
       throw BaconEggsAgeValidation.throwBaconEggs
    }
    else if baconAge > 21 {
        throw BaconEggsAgeValidation.throwBacon
    }
    else if eggsAge > 7 {
        throw BaconEggsAgeValidation.throwEggs
    }
    else {
        print("you can cook bacon and eggs")
    }
}

var baconAge = 3
var eggsAge = 2

do {
    try userTest(baconAge: baconAge,eggsAge: eggsAge)
}
catch BaconEggsAgeValidation.throwBaconEggs
{
    print("throw out Bacon and Eggs")
}
catch BaconEggsAgeValidation.throwBacon
{
    print("throw out Bacon")
}
catch BaconEggsAgeValidation.throwEggs
{
    print("throw out Eggs")
}
