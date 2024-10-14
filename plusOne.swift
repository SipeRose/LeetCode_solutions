import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        let len = digits.count - 1
        var arr = digits
        
        for i in stride(from: len, to: -1, by: -1) {
            arr[i] += 1
            if arr[i] == 10 {
                arr[i] = 0
                if i == 0 {
                    arr.insert(1, at: 0)
                } else { continue }
            } else { break }
        }
        return arr
    }
}
