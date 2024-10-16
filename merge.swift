import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1.replaceSubrange(m..<m+n, with: nums2)
        nums1.sort()
    }
}
