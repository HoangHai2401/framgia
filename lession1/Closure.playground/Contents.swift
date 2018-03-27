
import UIKit

func testClosure(name: String, myClosure:(String)->Void) {
    print("Test closure")
    myClosure(name)
}

testClosure(name: "Giang") { (name) in
    print("Hello \(name)")
}
