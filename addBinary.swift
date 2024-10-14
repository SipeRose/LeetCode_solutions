import Foundation

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        
        let first = (a.count >= b.count) ? Array(a) : Array(b)
        var second = (first == Array(a)) ? Array(b) : Array(a)
        
        for _ in 0..<(first.count - second.count) {
            second.insert("0", at: 0)
        }
        
        var k = 0
        
        for i in stride(from: first.count - 1, to: -1, by: -1) {
            let sum = Int(String(first[i]))! + Int(String(second[i]))! + k
            switch sum {
            case 1:
                k = 0
                second[i] = "1"
            case 2:
                k = 1
                second[i] = "0"
            case 3:
                k = 1
                second[i] = "1"
            default:
                k = 0
                second[i] = "0"
            }
        }
        
        if k == 1 { second.insert("1", at: 0) }
        
        return String(second)
    }
}
