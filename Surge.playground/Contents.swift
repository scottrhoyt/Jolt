import Foundation
import Surge
import XCPlayground

//// MARK: - Arithmetic
//
//let n = [-1.0, 2.0, 3.0, 4.0, 5.0]
//let sum = Surge.sum(n)
//
//let a = [1.0, 3.0, 5.0, 7.0]
//let b = [2.0, 4.0, 6.0, 8.0]
//let product = Surge.mul(a, b)
//
//// MARK: - Matrix
//
//// ⎛ 1  1 ⎞       ⎛ 3 ⎞
//// ⎢      ⎟ * B = ⎢   ⎟         C = ?
//// ⎝ 1 -1 ⎠       ⎝ 1 ⎠
//
//let A = Matrix([[1, 1], [1, -1]])
//let C = Matrix([[3], [1]])
//let B = inv(A) * C
//
//// MARK: - FFT
//
//func plot<T>(values: [T], title: String) {
//    for value in values {
//        XCPCaptureValue(title, value: value)
//    }
//}
//
//let count = 64
//let frequency = 4.0
//let amplitude = 3.0
//
//let x = (0..<count).map { 2.0 * M_PI / Double(count) * Double($0) * frequency }
//
//plot(sin(x), title: "Sine Wave")
//plot(fft(sin(x)), title: "FFT")

struct Temp : DoubleConvertible {
    enum Unit {
        case Kelvin, Farenheight, Celsius
    }
    
    static var defaultUnit = Unit.Kelvin
    
    var kelvin: Double
    var celsius: Double {
        get {
            return kelvin - 273.15
        }
        set {
            kelvin = newValue + 273.15
        }
    }
    var farenheight: Double {
        get {
            return celsius * 9 / 5 + 32
        }
        set {
            celsius = (newValue - 32) * 5 / 9
        }
    }
    
    func defaultValue() -> Double {
        switch Temp.defaultUnit {
        case .Kelvin:
            return kelvin
        case .Celsius:
            return celsius
        case .Farenheight:
            return farenheight
        }
    }
    
    // MARK: DoubleConvertible Stuff
    func doubleValue() -> Double {
        return kelvin
    }
    init(value: Double) {
        kelvin = value
    }
}

var a = Temp(value: 3)
var b = Temp(value: 2)
let c = [a,b]
Temp.sqrt(c)
c / c

b.farenheight = 32
a.celsius = 100
a.defaultValue()
b.defaultValue()
Temp.defaultUnit = .Celsius
a.defaultValue()
b.defaultValue()
Temp.defaultUnit = .Farenheight
a.defaultValue()

let aa: [Double] = [1, 2, 3, 4]
aa + aa