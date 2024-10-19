import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        let set: Set<Character> = Set(["a", "b", "c", "d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"])
        
        var letterString = ""
        for char in s.lowercased() {
            if set.contains(char){
                letterString += String(char)
            }
        }
        
        if letterString == String(letterString.reversed()) { return true }
        
        return false
    }
}
