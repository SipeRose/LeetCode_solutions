import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        return fibbonacci(n)
    }
    
    func fibbonacci(_ number: Int) -> Int {
        var first = 0
        var second = 1
        var result = 0
        for _ in 1...number {
            result = first + second
            first = second
            second = result
        }
        return result
    }
}
