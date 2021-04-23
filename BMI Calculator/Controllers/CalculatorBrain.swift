import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(h height: Float, w weight: Float){
        let bmiValue = Float(weight) / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Bro, go eat a Big Mac", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue >= 18.5 && bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Keep on getting those gainz bro!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Bro, go eat a salad", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        String(format: "%.1f", bmi?.value ?? 0.0 )
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? "No advice. This is hopeless"
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
}
