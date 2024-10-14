import Foundation

class Solution {
    func mySqrt(_ x: Int) -> Int {
        for i in 0...x {
            if (i*i <= x) && (x < (i + 1)*(i + 1)) {
                return i
            }
        }
        
        return 0
    }
}
