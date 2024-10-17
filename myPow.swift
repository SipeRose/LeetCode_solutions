import Foundation

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        
        if n == 0 || x == 1.0 {
            return 1.0
        } else if n == 1 {
            return x
        }
        
        if n < 0 {
            return myPow(1/x, -n)
        }
        
        switch n % 2 {
        case 0: return myPow(x * x, n/2)
        default: return x * myPow(x * x, (n - 1)/2)
        }

    }
}
