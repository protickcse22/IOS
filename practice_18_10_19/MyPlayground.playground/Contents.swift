// Enum ppractice
enum Day:String {
    case saturDay
    case sunDay
    case MonDay
    case TuesDay
    case wednesDay
    case thursDay
    case friDay
    
    var customedescription :String {
        switch self {
        case .friDay,.saturDay:
            return "it's a weekend"
    
        default:
            return "working day"
        }
    }
}
//if let aDay = Day(rawValue: 13){
//
//    aDay == .saturDay
//    print(aDay)
//}

let aDay = Day.sunDay
aDay.customedescription



enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

let barCode = Barcode.qrCode("TT099")

switch barCode {
case .upc(_, _, _, _):
    print("UPC code")
case .qrCode(let string):
    print("QR code type with value : \(string)")
}



enum stringOrInt {
    case string(String)
    case int(Int)
}



let numbers = [7,8,9,10]
let summedProduct = numbers.reduce(0,{$0 + $1})
print(summedProduct)

struct Step{
    var totalSteps : Int {
        willSet{
            print("New value to \(newValue)")
        }
        
        didSet{
            print("Did you set \(totalSteps)")
        }
    }
}


class Storage{
    static let shared = Storage()
    private init(){
        
    }
    func performOp() {
            }
}


















  
