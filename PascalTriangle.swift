import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        
        var pascalsTriangle: [[Int]] = []
        
        for i in 0..<numRows {
            var row: [Int] = []
            for k in 0...i {
                switch k {
                case 0, i:
                    row.append(1)
                default:
                    row.append(pascalsTriangle[i - 1][k - 1] + pascalsTriangle[i - 1][k])
                }
            }
            pascalsTriangle.append(row)
        }
        return pascalsTriangle
    }
}
