//: Playground - noun: a place where people can play

import UIKit




//initialize a UIColor using hexString
extension UIColor {
    convenience init(hexString val: String) {
        var hexString = val
        if hexString.hasPrefix("#"){
            hexString.remove(at: hexString.startIndex)
        }
        var hex = UInt32()
        Scanner(string: hexString).scanHexInt32(&hex)
        let r = CGFloat((hex >> 16) & 0xff) / 255.0
        let g = CGFloat((hex >> 8) & 0xff) / 255.0
        let b = CGFloat(hex & 0xff) / 255.0
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}

//usage: 
UIColor(hexString: "#C74646")


