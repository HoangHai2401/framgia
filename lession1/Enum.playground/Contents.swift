import UIKit

protocol CustomStringConvertible {
    var description: String { get }
}

enum DeviceMode: String, CustomStringConvertible {
    case metting
    case outdoor
    case silent
    case normal
    
    var description: String {
        return "aaa \(self.rawValue)"
    }
}

print(DeviceMode.metting.description)
