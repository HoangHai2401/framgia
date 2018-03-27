
import UIKit

func sayHello(name: String, age: Int) -> String {
    return "Hello \(name) - \(age)"
}
sayHello(name: "Giang", age: 22)

// hàm trả về nhiều giá trị
func getMinMax(arr: [Int]) -> (min: Int, max: Int)   {
    if arr.count == 0  {
        return (0, 0)
    }
    var min: Int = arr[0]
    var max: Int = arr[0]
    
    for a in arr  {
        if min > a  {
            min = a
        }
        if  max  <  a  {
            max = a
        }
    }
    return (min, max)
}
getMinMax(arr: [56, 12, 43, 65, 323, 45])
