import Foundation

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        var oldResult = [1]
        
        if rowIndex == 0 { return oldResult }
        
        for i in 1...rowIndex {
            var newResult = [Int]()
            for k in 0...i {
                if k == 0 || k == i {
                    newResult.append(1)
                } else {
                    let summa = oldResult[k - 1] + oldResult[k]
                    newResult.append(summa)
                }
            }
            oldResult = newResult
        }
        
        return oldResult
    }
}
