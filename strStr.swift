import Foundation

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if haystack.contains(needle) {
            let length = needle.count
            for i in 0...haystack.count {
                if haystack[haystack.index(haystack.startIndex, offsetBy: i)..<haystack.index(haystack.startIndex, offsetBy: i + length)] == needle {
                    return i
                }
            }
        } else {
            return -1
        }
        
        return -1
    }
}


var a = Solution()
print(a.strStr("sadbutsad", "sad"))
print(a.strStr("leetcode", "leeto"))
