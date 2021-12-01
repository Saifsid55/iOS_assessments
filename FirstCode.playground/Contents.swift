import UIKit
import Foundation
import Darwin

//Q1
//
//Q2


/*arrPer.append(contentsOf: [person6,person7,person8,person9,person10,person11,person12])

func employeeList(arr : [Personal],country : Country) -> [String]{
    var list0 = [String]()
    for i in arr{
        if case country = i.country{
            list0.append(i.name)
        }
    }
    return list0
}

var empList = employeeList(arr: arrPer, country: .america)

for j in empList{
    print(j)
}*/

//Q3

/*func departmentList(array : [Professional],dept : Department) -> [String]{
    var list1 = [String]()
    for name in array{
        if(name.dept == dept){
            list1.append(name.name)
        }
    }
    return list1
}

var deptList = departmentList(array: arrPro, dept: .android)
for i in deptList{
    print(i)
}
*/

//Q4

/*func CommonBandC(array : [Info]) -> [String]{
    var list2 = [String]()
    for i in array{
        if case i.country = i.bran {
            list2.append(i.name)
        }
    }
    return list2
}

var samePlaceAndBranch = CommonBandC(array: arrInfo)

for j in samePlaceAndBranch{
    print(j)
}*/

//Q5

/*func hobbyAndExperience(arr : [Info]){
    for i in arr{
        if i.hobbies != nil{
            print("Name is \(i.name) and Experience is \(i.experience)")
        }
    }
}

hobbyAndExperience(arr: arrInfo)*/

//Q6

//
//var str = "zain banar"
//
//let index = str.index(str.startIndex, offsetBy: 5)
//
//str.insert(contentsOf: " 3", at: str.endIndex)
//print(str)
//
//print(str[...index])

//var airports = [1 : "LHR",2 : "India"]
//
//for airportCode in airports.values{
//    print("Airport code: \(airportCode)")
//}
//
//for (airportCode, airportName) in airports {
//    print("\(airportCode): \(airportName)")
//}
//
//
//let arr = [Int](airports.keys)

//
//let config = URLSessionConfiguration.default
//let session = URLSession(configuration: config)
//
//let url = URL(string: "https://httpbin.org/anything")!
//let task = session.dataTask(with: url) { data, response, error in
//
//    // ensure there is no error for this HTTP response
//    guard error == nil else {
//        print ("error: \(error!)")
//        return
//    }
//
//    // ensure there is data returned from this HTTP response
//    guard let content = data else {
//        print("No data")
//        return
//    }
//
//    // serialise the data / NSData object into Dictionary [String : Any]
//    guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
//        print("Not containing JSON")
//        return
//    }
//
//    print("gotten json response dictionary is \n \(json)")
//    // update UI using the response here
//}
//
//// execute the HTTP request
//task.resume()



//func greet(person : String) -> String
//{
//    let greeting = "Hello,"+person+"!"
//    return greeting
//}
//print(greet(person:"Saif"))
//print(greet(person: "Zain"))
//
//func hello() -> String
//{
//    return "Hello world"
//}
//print(hello())


//------------------------------Functions With Multiple Parameters--------------------------
//
//func maths( a : Int, b : Int ) -> Int
//{
//    let c = a+b
//    return c
//}
//print(maths(a: 3, b: 4))
//
//
//func printAndCount(string: String) -> Int {
//    print(string)
//    return string.count
//}
//print(printAndCount(string: "Saif"))


//------------------------------------Functions with Multiple Return Values--------------------------

//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for i in array[1..<array.count] {
//        if i < currentMin {
//            currentMin = i
//        } else if i > currentMax {
//            currentMax = i
//        }
//    }
//    return (currentMin, currentMax)
//}
//print(minMax(array: [2,3,1,5,6,4,8]))
//
//
//
//var arrays : [Int] = [2,3,1,5,6,1,4,8]
//for i in arrays
//{
//    for j in arrays
//    {
//        if(arrays[i] == arrays[j])
//        {
//            print(arrays[i])
//        }
//    }
//}
//print("The count is ",arrays.count)


//------------------------------------To ignore the return value of Function-----------------------------------------------------

//
//func printAndCount(string: String) -> Int {
//    print(string)
//    return string.count
//}
//func printWithoutCounting(string: String) {
//    let _ = printAndCount(string: string)
//}
//print(printAndCount(string: "Saif"))
//print(printWithoutCounting(string: "Saif"))

//-------------------------------------------Optional? return Type---------------------------------------------------------------


//func minMax(array: [Int]) -> (min: Int, max: Int)? {
//    if array.isEmpty {
//        return nil
//
//    }
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//var array : [Int] = [2,34,52,21,7,8]
//print(minMax(array: array))


//var array : [Int] = [2,34,52,21,7,8]
//
//for (i,j) in array.enumerated()
//{
//    print(i, terminator: " ")
//}


//func greet(name : String, Hometown : String) -> String
//{
//    return "Hello \(name)! welcome to \(Hometown)."
//}
//print(greet(name: "Saif", Hometown: "Delhi"))



//------------------------------------------Default parameter Value--------------------------------------------------------------


//func defaultpara(a: Int, b: Int = 12) -> Int
//{
//    return a+b
//}
//print(defaultpara(a: 3))



//------------------------------------------My Function--------------------------------------------------------------

//var val : Double = 2500
//func findpercentage(value: Double, percentage: Double) -> Double
//{
//    let percentage: Double = value*percentage/100
//    return percentage
//}
//let result = findpercentage(value: val, percentage: 200)
//print("The percentage of \(val) is \(result) %")


//------------------------------------------Function type as return Type---------------------------------------------------------


//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}
//
//var currentValue = 3
//let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
//print("Counting to zero:")
//
//
//// Counting to zero:
//while currentValue != 0 {
//    print("\(currentValue)... ")
//    currentValue = moveNearerToZero(currentValue)
//}
//print("zero!")




//------------------------------------------------------CLOSURES-----------------------------------------------------------------


//Closures are self-contained blocks of functionality that can be passed around and used in your code
//Basically it works as a function but without using func keyword



//var addition:(Int, Int) -> Int =
//{
//    (num1, num2) in
//    return num1+num2
//}
//
//
//let result = addition(2,4)
//print(result)




//------------Another Way----------->>>>>>>>>>>>>

//var addition2:(Int, Int) -> Int =
//{
//   return $0 + $1
//}
//let result2 = addition2(3,4)
//print(result2)



//------------One more Way----------->>>>>>>>>>>>>

//var addition3:(_ num1: Int, _ num2: Int) -> Int =
//{
//    (_ num1: Int, _ num2: Int) -> Int in
//    num1 + num2
//}
//
//
//let result3 = addition3(2,4)
//print(result3)



//------------------------------------------------------TypeAliases-----------------------------------------------------


//typealias addnumbers = (_ num1: Int, _ num2: Int) -> Int
//
//let addition: addnumbers =
//    {
//        (_ num1: Int, _ num2: Int) -> Int in
//        return num1+num2
//    }
//
//print(addition(2,7))



//-----------------------------------------Function call sequence with closure--------------------------------------------------


//func morningmsg(isMorning: Bool, name: () -> String)
//{
//    debugPrint("Print good Morning msg")
//    if(isMorning)
//    {
//        debugPrint("Good Morning \(name())")
//    }
//}
//
//func assigname(name: String) -> String
//{
//    debugPrint("Assigned name is called")
//
//    return name
//}
//
//morningmsg(isMorning: true)
//{
//    () -> String in assigname(name: "Saif")
//}


//---------------------------------------------------AutoClosure-----------------------------------------------------------------



//
//func morningmsg(isMorning: Bool, name: @autoclosure () -> String)
//{
//    debugPrint("Print good Morning msg")
//    if(isMorning)
//    {
//        debugPrint("Good Morning \(name())")
//    }
//}
//
//func assigname(name: String) -> String
//{
//    debugPrint("Assigned name is called")
//    return name
//}
//
//morningmsg(isMorning: true, name: "Saif")


//Broadband plan Calculation with GST
//
//var calBBPlan:(Double) -> Double =
//{
//    (ActPlan) in
//    return ActPlan*18/100+ActPlan
//}
//
//let totalPLan = calBBPlan(572)
//print(totalPLan)
//print(totalPLan*4)


//------------------------------------------------------Enums-----------------------------------------------------------

//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.


                                                       //Syntax

//enum College
//{
//    case collegeName
//    case ID
//    case StudentNAme
//
//    func khuchBhi() -> String
//    {
//        let clgDetail = College.collegeName
//        switch clgDetail
//        {
//        case .collegeName:
//            return "Integral University"
//        case .ID:
//            return "1700"
//        case .StudentNAme:
//            return  "Mohd Saif"
//        }
//    }
//
//}
//print(College.ID.khuchBhi())



//---------------------------------------------------------------PROTOCOLS--------------------------------------------------------------------------


//protocol Animal{
//    func legs() -> String
//    func eat() ->String
//    func walk() ->String
//}
//
//extension Animal{
//    func legs() -> String{
//        return "Has 4 legs"
//    }
//    func eat() -> String{
//        return "Ate with the help of mouth"
//    }
//    func walk() -> String{
//        return "Walking"
//    }
//
//}
//
//class Cat : Animal{
//
//}
//class Dog : Animal{
//
//}
//class Human : Animal{
//    func legs() -> String {
//        return "Has 2 legs"
//    }
//    func eat() -> String {
//        return "Ate with the help of Mouth and Hands"
//    }
//
//}
//
//var cat = Cat()
//print(cat.eat())
//var human = Human()
//print(human.eat())
//





//class Addition{
//    func addi(_ num1: Int, _ num2: Int) -> Int{
//        return num1+num2
//    }
//}
//
//var abc = Addition()
//print(abc.addi(1,2))
//
//



//-------------------------------------------------------------MULTITHREADING-----------------------------------------------------------------------

                                 //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Concurrency>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

//If we want to run a task at same time or in random order

//We use concurrency so that user dont have to wait task to happen
//for eg- Loading of images


                         //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Synchronus_Asynchronus>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

//Synchronise task- It is a type of task when it runs it doesn't allow other task to run in other words next task will not execute until the current task is finished


//ASynchronise task - In this the App is free to run other tasks while the first one is executing


//Serial Queue- It has Single Thread  one task execute at a time

//Multiple Queue- It has Multiple Thread, Multiple task can execute


                     //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Synchronus with serial Example>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//
//func QueueTesting(){
//
//    let myqueue = DispatchQueue(label: "Saif")
//
//    myqueue.sync {
//        print("Task 1 started")
//
//        for index in 1...5{
//            print("\(index) times of 5 is \(index*5)")
//        }
//        print("Task 1 Finished")
//    }
//    myqueue.sync {
//        print("Task 2 started")
//
//        print("Task 2 Finished")
//    }
//
//}
//
//print(QueueTesting())


                    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Asynchronous with serial Example>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//func QueueTesting(){
//
//    let myqueue = DispatchQueue(label: "Saif")
//
//    myqueue.async {
//        print("Task 1 started")
//
//        for index in 1...5{
//            print("\(index) times of 5 is \(index*5)")
//        }
//        print("Task 1 Finished")
//    }
//    myqueue.async {
//        print("Task 2 started")
//
//        print("Task 2 Finished")
//    }
//
//}
//
//print(QueueTesting())


                 //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Synchronous with Concurrent Example>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



//func QueueTesting(){
//
//    let myqueue = DispatchQueue(label: "Saif", attributes: .concurrent)
//
//    myqueue.sync {
//        print("Task 1 started")
//
//        for index in 1...5{
//            print("\(index) times of 5 is \(index*5)")
//        }
//        print("Task 1 Finished")
//    }
//    myqueue.sync {
//        print("Task 2 started")
//
//        print("Task 2 Finished")
//    }
//
//}
//
//print(QueueTesting())
//


                         //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Asynchronous with Concurrent Example>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//
//func QueueTesting(){
//
//    let myqueue = DispatchQueue(label: "Saif", attributes: .concurrent)
//
//    myqueue.async {
//        print("Task 1 started")
//
//        for index in 1...5{
//            print("\(index) times of 5 is \(index*5)")
//        }
//        print("Task 1 Finished")
//    }
//    myqueue.async {
//        print("Task 2 started")
//
//        print("Task 2 Finished")
//    }
//
//}
//
//print(QueueTesting())
//



                            //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<QoS (Quality of Service)>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

//Quality of service helps us categorize the task of our DispatchQueue with priority

//userInteractive: Used for animations, or updating UI.
//
//userInitiated: Used for tasks like loading data from API, preventing the user from making interactions.
//
//utility: Used for tasks that do not need to be tracked by the user.
//
//background: Used for tasks like saving data in the local database or any maintenance code which is not on high priority.
//


//class Saif {
//    var x: Int
//    init(_ x: Int)
//    {
//        self.x = x
//    }
//    lazy var y = {
//        return 5
//    }()
//}
//var obj = Saif(5)
//print(obj)
//
//
//


//class Animals{
//    var name: String
//    init(_ name: String){
//        self.name = name
//}
//}
//var dog = Animals("Dog")
//var cat = dog
//print(dog.name)
//print(cat.name)
//cat.name = "Tomy"
//print(cat.name)
//print(dog.name)



//struct Animals{
//    var name: String
//    init(_ name: String){
//        self.name = name
//}
//}
//var dog = Animals("Dog")
//var cat = dog
//print(dog.name)
//print(cat.name)
//dog.name = "Tomy"
//print(dog.name)
//print(cat.name)

//var tup = (1, "saif", 1.09088)
//print(tup.0)
//print(tup.1)
//
//tup.0 = 2
//tup.1 = "Talha"
//print(tup.0)
//print(tup.1)
//print(tup.0)
//print(tup.2)
//print(tup)



                             //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<If let>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//var name: String? = "Saif"
//
//if let name = name{
//    print(name)
//}
//else{
//    print("it has no value")
//}
//


                             //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Guard let>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//func naming(name: String?){
//    guard let name = name else{
//        print("It is nil")
//        return
//    }
//    print(name)
//}
//naming(name: "Saif")

//
//let name : String? = "Talha"
//let name2 : String = name ?? "Saif"
//print(name2)





//var clo: (Int, Int) -> Int = {
//    (n1, n2) in
//    return n1+n2
//
//}
//let result = clo(2, 4)
//print(result)
//
//
//func somefunc(name: String, myclosure:()->()){
//    print(name)
//    myclosure()
//    print("Function ended")
//}
//
//somefunc(name: "Saif", myclosure: {
//    print("This is trailing closure")
//})


//protocol Animals{
//
//    func legs()
//}
//
//extension Animals{
//    func legs(){
//        print("Has four legs")
//    }
//}
//class Cat: Animals{
//
//}
//class Dog: Animals{
//
//}
//class Human: Animals{
//    func legs() {
//        print("Has two leg")
//    }
//}
//
//var cat = Cat()
//var dog = Dog()
//var human = Human()
//
//cat.legs()
//dog.legs()
//human.legs()
//


//class abc{
//
//    func naming(name: String?){
//        guard let name = name else {
//            print("it is Nil")
//            return
//        }
//        print(name)
//
//    }
//}
//
//var a = abc()
//a.naming(name: nil)

//
//func naming(_ name: String?){
//    guard let name = name else {
//        print("it is Nil")
//        return
//    }
//    print(name)
//
//}
//naming("Saif")


//enum Direction{
//    case north
//    case south
//    case east
//    case west
//}
//
//func getdirection(){
//    let direction = Direction.east
//
//    switch direction{
//    case .north:
//        print("This is north direction")
//    case .south:
//        print("This is south direction")
//    case .east:
//        print("This is east direction")
//    case .west:
//        print("This is west direction")
//    }
//}
//
//getdirection()


//enum College: String{
//    case CollegeName = "Integral"
//    case Name = "Saif"
//    case Id = "2"
//}
//
//func withtype(){
//    let collegedetails = College.CollegeName.hashValue
//    print(collegedetails)
//}
//withtype()


//enum CollegeDetail{
//    case CollegeName
//    case name
//    case Id
//
//    func description() -> String{
//        switch self{
//        case .CollegeName:
//            return "Integral"
//        case .name:
//            return "Saif"
//        case .Id:
//            return "3"
//        }
//    }
//}
//
//let details = CollegeDetail.name.description()
//print(details)


//enum College: String, CaseIterable{
//    case name = "Saif", clgname = "Integral", clgID = "32434"
//
//    func description(){
//        switch self{
//        case .name:
//            print(self.rawValue)
//        case .clgname:
//            print(self.rawValue)
//        case .clgID:
//            print(self.rawValue)
//        }
//    }
//}
//
//var details = College.name.rawValue
//print(details)
//
//let numofdetails = College.allCases.count
//print(numofdetails)
//
//for i in College.allCases{
//    print(i)
//}


//enum planet: Int,CaseIterable{
//    case earth,mercury,venus,mars,jupyter
//}
//for i in planet.allCases{
//    print(i.rawValue)
//}


//
//func naming(name: String?){
//    guard let name2 = name else{
//        print("It is Nil")
//        return
//    }
//    print(name2)
//}
//naming(name: nil)


//var name: String?
//if let thisname = name{
//    print(thisname)
//}
//else{
//    print("It is nil")
//}
//8512822957


//class Abc{
//
//    var name: String
//    var id: Int
//    var age: Int
//    var fees: Int
//    init(name: String, id: Int, age: Int){
//        self.name = name
//        self.id = id
//        self.age = age
//        self.fees = (age*id)
//    }
//}
//
//var obj = Abc(name: "Saif", id: 24234, age: 20)
//print("""
//      Name of candidate is = \(obj.name)
//      id is = \(obj.id) and
//      age is = \(obj.age)
//      fess is = \(obj.fees)
//""")

                                     //Failable init



//struct aadhar {
//    var uidai: String
//
//    init?(uidai:String){
//        if(uidai.count<12 || uidai.count>14){
//            return nil        }
//        self.uidai = uidai
//    }
//}
//
//var obj = aadhar(uidai: "1122-1122-1232")
////print(obj?.uidai)
//
//if let uid = obj?.uidai {
//    print(uid)
//}
//else {
//    print("nil")
//}






//
//class check {
//    var characters: String
//
//    init?(characters: String){
//        if(characters.count>4) {
//            return nil
//        }
//        self.characters = characters
//    }
//}
//
//var obj = check(characters: "Saif2")
//
//if let char = obj?.characters{
//    print(char)
//}
//else{
//    print("Limit exceeded")
//}





//class cake {
//    var quantity: Int
//    var name: String
//
//    init(cakeQuantity: Int, cakeName: String){
//        quantity = cakeQuantity
//        name = cakeName
//    }
//}
//var obj = cake(cakeQuantity: 2, cakeName: "Choco")
//print(obj.quantity, obj.name)
//
//



//class vehicle {
//    var wheels: Int
//    var type: String
//    init(wheels: Int, type: String) {
//        self.wheels = wheels
//        self.type = type
//    }
//}
//class Bicycle : vehicle {
//    override init() {
//        super.init()
//    }
//}
//
//var obj = Bicycle(wheels: 2, type: "two wheeler")
//print(obj.wheels)


//var someclosure: (Int, Int) -> Int = {
//    (num1, num2) in
//    return num1+num2
//}
//
//func matics(name: String, someslosure:(Int, Int)-> Int) {
//    someslosure
//    print(name)
//}
//
//print(matics(name: "Saif", someclosure(2,4)))



//var myclosure:(Int, Int) -> Int = {
//
//    (n1, n2) in
//    return n1+n2
//}
//print(myclosure())



//func anything(name: Int, marks:(Int)-> Void)-> String{
//    print("Student name is \(name)")
//    marks(name)
//    return "Ended"
//}
//
//var abc = anything(name: 85, marks: {
//    (num) in
//    print(num)
//})
//print(abc)



//func anything(name: Int, marks:(Int)-> Void)-> String{
//    print("Student name is \(name)")
//    return "Ended"
//}
//
//var abc = anything(name: 85, marks: {
//    (self num) in
//    print(num)
//})
//print(abc)




//var completionHandlers: [() -> Void] = []
//func someFunctionWithEscapingClosure(Handler: @escaping () -> Void) {
//    completionHandlers.append(Handler)
//}

//
//protocol FullyNamed {
//    var fullName: String { get }
//}
//struct person: FullyNamed{
//    var fullName: String
//}
//
//let john = person(fullName: "Saif")
//
//print(john.fullName)


//protocol Car {
//    func start()
//    func stop()
//    func speed()
//}
//extension Car {
//    func start(){
//        print("Car is Started")
//    }
//    func stop(){
//        print("Engine Stops")
//    }
//    func speed(){
//        print("Speed is 120kph")
//    }
//}
//
//class Hyundai: Car{
//
//}
//class Ferrari: Car{
//    func speed() {
//        print("Speed of car is 300kph")
//    }
//}
//
//var objHyundai = Hyundai()
//objHyundai.speed()
//var objFerrari = Ferrari()
//objFerrari.speed()
//
//
//

//protocol AdditionResultDelegate : AnyObject
//{
//    func didFinishAddingTwoNumbers(result: Int)
//}
//
//class Developer
//{
//    weak var managerReference: AdditionResultDelegate?
//
//    func developerWillAddTwoNumber(a: Int, b: Int)
//    {
//        let result = a + b
//        managerReference?.didFinishAddingTwoNumbers(result: result)
//    }
//}
//
//class Manager : AdditionResultDelegate
//{
//    var developer: Developer?
//
//    init(_developer: Developer) {
//        developer = _developer
//        developer?.managerReference = self
//    }
//
//    func didFinishAddingTwoNumbers(result: Int)
//    {
//        print("result of addition = \(result)")
//    }
//
//    func addTwoNumber(x: Int, y: Int)
//    {
//        developer?.developerWillAddTwoNumber(a: x, b: y)
//    }
//}
//
//let objManager = Manager(_developer: Developer())
//objManager.addTwoNumber(x: 10, y: 10)



//enum Direction: String{
//    case north = "North",south = "South",east = "Easr",west = "West"
//}
//
//func getdirection(){
//
//    let detail = Direction.north.rawValue
//    print(detail)
//}
//getdirection()


//
//enum BikeError: Error{
//    case insufficientfuel(fuelneeded: Int)
//    case insufficientage(ageneeded: Int)
//}
//
//struct Bike {
//    func startBike(fuelQuantity: Int) throws -> String {
//        if fuelQuantity < 4 {
//            throw BikeError.insufficientfuel(fuelneeded: 4)
//        }
//        return "Lets start the bike"
//    }
//    func age(currentage: Int) throws{
//        if currentage < 18 {
//            throw BikeError.insufficientage(ageneeded: 18)
//        }
//        print("Age is good to go")
//    }
//}
//
//
//let objBike = Bike()
//do {
//
//    try objBike.startBike(fuelQuantity: 2)
//} catch BikeError.insufficientfuel(let fuelneed){
//    print("Can't start bike due to insufficient fuel, The needed fuel quantity is \(fuelneed)")
//}
//do{
//    try objBike.age(currentage: 18)
//}
//catch BikeError.insufficientage(_){
//    print("Need 18+ age to ride the bike ")
//}


//enum BikeError: Error {
//case insufficientFuel(fuelNeeded: Int)
//}
//
//
//class Bike{
//    func checkfuel(availableFuel: Int) throws -> String{
//        if availableFuel < 3 {
//            throw BikeError.insufficientFuel(fuelNeeded: 3)
//        }
//        return "Bike is good to go"
//    }
//}
//
//var ob = Bike()
//
//do{
//   let biking = try! ob.checkfuel(availableFuel: 3)
//    print(biking)
//}
//catch BikeError.insufficientFuel(let fuelNeeded){
//    print("Fuel is low needed fuel is \(fuelNeeded) lt")
//}
//
//



//struct calculation{
//    var num1: Int
//    var num2: Int
//    var addition: Int{
//        get{
//            return num1+num2
//        }
//        set{
//            num1 = num1*addition
//        }
//    }
//}
//
//var ob = calculation(num1: 5, num2: 5)
//print(ob.addition)
//print(ob.num1)


//func addgen<T: Numeric>(n1: T, n2: T) -> T{
//    return n1+n2
//}
//
//print(addgen(n1: 5, n2: 5))


//var someclosure: (Int, Int) -> Int = {
//    (num1, num2) in
//    return num1+num2
//}
//
//func matics(name: String, someslosure:(Int, Int)-> Int) {
//    someslosure
//    print(name)
//}
//
//print(matics(name: "Saif", someclosure(2,4)))

//class A {
//   fileprivate var name: String = "Saif"
//    func printname() -> String{
//        return name
//    }
//}
//var ob = A()
//print(ob.name)
//
//class B : A{
//    func printanothername() -> String{
//        return "The name is \(name)"
//    }
//}
//
//var ob2 = B()
//print(ob2.printanothername())



                                       //Property Observers


//class Bank{
//    var amount: Double{
//        didSet{
//            msg()
//        }
//    }
//    init(amount: Double){
//        self.amount = amount
//    }
//    func credited(camount: Double){
//        amount += camount
//    }
//    func debited(dAmount: Double){
//        amount -= dAmount
//    }
//    func msg(){
//        print("Current bal is \(amount)")
//    }
//}
//
//var ob = Bank(amount: 12000.0)
//ob.credited(camount: 5000)
//ob.debited(dAmount: 3000)


//var anyset: Set<String> = ["Saif", "Talha"]
//anyset.insert("Zain")
//print(anyset)
//
//
//var dict: [Int: String] = [1:"Saif", 2:"Talha"]
//
//for(i,j) in dict{
//    print("\(i), \(j)")
//}




//struct calculation{
//    var num1: Int
//    var num2: Int
//    var addition: Int{
//        get{
//            return num1+num2
//        }
//        set{
//            num1 = num1*addition
//        }
//    }
//}
//
//var ob = calculation(num1: 5, num2: 5)
//print(ob.addition)
//print(ob.num1)
//



//struct anv{
//    var n1: Int
//    var n2: Int
//    var add: Int{
//        get{
//            return n1+n2
//        }
//    }
//}
//
//var ob = anv(n1: 2, n2: 4)
//print(ob.add)



//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newTotalSteps) {
//            print("About to set totalSteps to \(newTotalSteps)")
//        }
//        didSet {
//            if totalSteps > oldValue  {
//                print("Added \(totalSteps - oldValue) steps")
//            }
//        }
//    }
//}
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//// About to set totalSteps to 200
//// Added 200 steps
//stepCounter.totalSteps = 360
//// About to set totalSteps to 360
//// Added 160 steps
//stepCounter.totalSteps = 896
//// About to set totalSteps to 896
//// Added 536 steps



//class steps {
//    var totalsteps: Int = 0{
//        willSet(newsteps) {
//            print("Steps added are \(newsteps)")
//        }
//        didSet{
//            if totalsteps > oldValue{
//                print(totalsteps-oldValue)
//            }
//        }
//    }
//}
//
//var ob = steps()
//ob.totalsteps = 200
//ob.totalsteps = 300





//var myclo:(Int, Int) -> Int = {
//    (n1, n2) in
//    return n1+n2
//}

//func abc(name: String, myclo:(Int, Int) -> Int){
//    print(name)
//    print(myclo(2,6))
//    print("Ended")
//}
//
//abc(name: "Saif", myclo: {
//    (n1, n2) in
//    return n1+n2
//})


//struct aadhar {
//
//    var uid: String
//
//    init?(uid: String){
//        if(uid.count<12 || uid.count>14){
//            return nil
//        }
//        self.uid = uid
//    }
//}
//
//var ob = aadhar(uid: "1234-4565-")
//
//
//if let abc = ob?.uid{
//    print(abc)
//}
//else{
//    print("Invalid")
//
//}


//struct abc {
//    var name: String
//    init(name: String){
//        self.name = name
//    }
//    convenience init(){
//        self.init(name: "aasaasdas")
//    }
//}
//
//var ab = abc()
//print(ab.name)


//class xyz{
//    var a: Int
//    var b: Int
//    init(a: Int){
//        self.a = a
//    }
//    init(b: Int){
//        self.b = b
//    }
//    convenience init(){
//        self.init(a: 2)
////        self.init(b: 4)
//    }
//
//}
//
//var ob = xyz()
//print(ob.a)

//var name: String? = "Saif"
//var name2 = name ?? "Talha"
//print(name2)
//
//
//func addgen<T: Numeric>(n1:T, n2:T) -> T{
//    return n1+n2
//}
//print(addgen(n1: 2.333, n2: 5.4434))

//var clo: (Int) -> Int = {
//
//}
//
//
//
//
//func abc(name: String, myclo:(Int) -> Int){
//    print(name)
//    print("name is \(name) and age is \(myclo(24))")
//}
//
//abc(name: "Saif", myclo: {
//    (num) in
//    return num
//})


protocol walking {
    func speed()
}

extension walking{
    func speed(){
        print("Normally walking")
    }
}
class oldman: walking{

}

class Boy: walking{
}

var ob = oldman()
var ob2 = Boy()

ob.speed()
ob2.speed()
