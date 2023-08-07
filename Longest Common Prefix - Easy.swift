import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var result = strs[0]
        
        for item in strs {
            if result.commonPrefix(with: item).count < result.count {
                result = result.commonPrefix(with: item)
            }
        }
        
        return result
    }
}

