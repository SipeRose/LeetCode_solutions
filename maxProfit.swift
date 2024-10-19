import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var currentDelta = 0
        var maxDelta = 0
        
        for i in 1..<prices.endIndex {
            currentDelta = max(0, currentDelta + prices[i] - prices[i - 1])
            maxDelta = max(maxDelta, currentDelta)
        }
        
        return maxDelta
    }
}
