import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        var a = s
        
        while a.last == " " {
            a.popLast()
        }
        
        guard let last = a.lastIndex(of: " ") else { return a.count }
        
        return a[last..<a.endIndex].count - 1
        

    }
}

let a = Solution()
print(a.lengthOfLastWord("a "))
