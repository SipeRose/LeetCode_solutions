import Foundation

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        var nums3 = nums1 + nums2
        nums3 = nums3.sorted()
        
        if (nums1.count + nums2.count) % 2 == 0 {
            return Double(nums3[nums3.count/2 - 1] + nums3[nums3.count/2])/2
        } else {
            return Double(nums3[Int(nums3.count/2)])
        }
    }
}
