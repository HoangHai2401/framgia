
import UIKit

/* Difference between let & var */
let str = "Hello, playground"
var myName = "Giang"
//str = "hi" //error
myName = "Huong" //ok

/* Tuple */
func getAHighScore(name: String, score: Int) -> (name: String, score: Int) {
    let theName = name + " Giang"
    let theScore = score + 27
    return (theName, theScore)
}
getAHighScore(name: "Mai", score: 10)

/* Optional */
let givenName: String = "Mai"
let familyName: String = "Giang"
let middleName: String? = "Thi"
func displayName() -> String {
    if let middleName = middleName {
        return givenName + " " + middleName + " " + familyName
    }
    return givenName + " " + familyName
}
displayName()

/* ? & ! */
let neverNil:String! = "I'm not nil"
var myAge:Int? = 22
print(myAge)
myAge = 23
print(myAge!) // "!" is to unwrap
