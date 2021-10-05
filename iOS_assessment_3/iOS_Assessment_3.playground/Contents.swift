import UIKit


//Q1

/*func siftBeans(arr : [String]) -> (beans : [String],otherGrocewries : [String]){
    var beans = [String]()
    var groceries = [String]()
    for grocery in arr{
        if grocery.contains("beans"){
            beans.append(grocery)
        }else{
            groceries.append(grocery)
        }
    }
    return (beans,groceries)
}
var groceryList = ["Tea", "Sugar", "Rice", "Black beans", "White beans", "Sauce", "pinto beans", "Apple"]
let result = siftBeans(arr : groceryList)*/

//Q2

/*enum operation{
    case addition,subtraction,multiplication,division,squareroot
}

class Calculator{
    var a : Double
    var b : Double?
    init(firstForSquareRoot : Double , second : Double?){
        a = firstForSquareRoot
        b = second
    }
    func equals(oper : operation) -> Double{
        var calc : Double?
        if let unwrapped = b{

            switch oper {
                case .addition:
                    calc = a + unwrapped
                case .subtraction:
                    calc = a - unwrapped
                case .multiplication:
                    calc = a * unwrapped
                case .division:
                    calc = a / unwrapped
                case .squareroot:
                    calc = a.squareRoot()
            }
        }else{
            if oper == .squareroot{
                calc = a.squareRoot()
            }
        }
        return calc!
    }
}

var obj = Calculator(firstForSquareRoot: 5, second: nil)
let result2 = obj.equals(oper: .squareroot)
print(result2)
*/


//Q3

/*struct Calculations{
    func addition(a: Int, b: Int) -> Int {
        return a + b
    }

    func subtraction(a: Int, b: Int) -> Int {
        return a - b
    }

    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }

    func division(a: Int, b: Int) -> Int {
        return a / b
    }
}

func calculate(a: Int, b: Int, operation: (Int, Int) -> Int) {
    let result = operation(a,b)
    print(result)
}
var calc = Calculations()
var result: () = calculate(a: 8, b: 6, operation: calc.subtraction)
print(result)*/



//Q4

struct myDataSource {
    var name: String
    var dance: Int
    var run: Int
    var Sing: Int
    var fight: Int
    var academic: Int
}

enum Task{
    case dance
    case run
    case sing
    case fight
    case academic

    func task() -> String {
        switch  self {
        case .dance:
            return "good dance"
        case .run:
            return "good run"
        case .sing:
            return "good sings"
        case .fight:
            return "good fights"
        case .academic:
            return "good academics"
        }
    }

    func filter(_ name: String, object: (String) -> Void ){
        object(name)
    }

}

class  TraineesActivity{

    lazy var myData: [myDataSource] = [.init(name: "Saif", dance: 12, run: 73, Sing: 44, fight: 90, academic: 98),
                                       .init(name: "Talha", dance: 23, run: 34, Sing: 46, fight: 56, academic: 67),
                                       .init(name: "Satyam", dance: 44, run: 55, Sing: 22, fight: 78, academic: 23) ]

    var records1: [myDataSource] = []
    var records2: [Task] = []
    func performActivity(_ name: String, _ activity: Task){
        var tranieeobj: myDataSource? = nil
        activity.filter(name) { (name) in
            for data in myData where data.name == name {
                tranieeobj = data
            }
        }
        if tranieeobj != nil {
            print("\(tranieeobj?.name ?? "not") good \(activity) \(tranieeobj!.run)")
            recordActivity(trainee: tranieeobj!, Activity: activity)
        }
        else{
            print("No trainee found")
        }
    }

    func recordActivity(trainee traineeObj: myDataSource, Activity activity: Task) {
        records1.append(traineeObj)
        records2.append(activity)
    }

    func rerunActivity() {
        for i in records1 {
            for j in records2 {
                print("\(i.name) good " + "\(j)" + " \(i.run)" )
        }
    }
    }

}
var obj1 = TraineesActivity()
obj1.performActivity("Saif", .run)
obj1.performActivity("Talha", .run)
obj1.performActivity("Satyam", .academic)
obj1.rerunActivity()

