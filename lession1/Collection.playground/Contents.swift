
import UIKit

var str = "Hello, playground"

/* array */
var names = ["Anna", "Alex", "Brian", "Jack"]
names.append("Giang")
for name in names {
    print("Hello, \(name)!")
}

/* dictionary */
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]
print(responseMessages[200]!)

/* set */
var set:Set<String> = ["Cúc", "Lan", "Hồng", "Huệ"]
if set.contains("Cúc"){
    print("Đã Có")
} else{
    print("Chưa Có")
}

