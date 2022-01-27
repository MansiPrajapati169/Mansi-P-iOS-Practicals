class Cost {
    var mealCost: Double = 3.5
    var tip: Int = 20
    
    func TotalCost() {
        var totalCost = (Double(tip) * mealCost) / 100
        totalCost += mealCost
        print(totalCost)
    }
}

var cost = Cost()
cost.TotalCost()
