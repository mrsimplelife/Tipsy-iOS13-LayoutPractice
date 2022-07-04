import Foundation

struct CalculateBrain{
    var percent:Float = 0.1
    var people:Float = 2
    var result:String = "0.0"
    
    mutating func setPercent(_ percent:String){
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        self.percent = Float(truncating: formatter.number(from: percent) ?? 0)
    }
    mutating func setPeople(_ people:Double){
        self.people = Float(people)
    }
    mutating func calculate(_ bill:String){
        result = String(format:"%.2f", (Float(bill) ?? 0.0)*(1.0+percent) / people)
    }
}
