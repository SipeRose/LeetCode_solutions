import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var resultString = ""
        
        var dict: [Character : Character] = [
            "[" : "]",
            "{" : "}",
            "(" : ")"
        ]
        
        guard ["{", "(", "["].contains(s.first) else { return false }
        
        for letter in s {
            if ["{", "(", "["].contains(letter) {
                resultString.append(letter)
            } else {
                guard let _ = resultString.last else { return false }
                if dict[resultString.last!] == letter {
                    resultString.removeLast()
                } else {
                    resultString.append(letter)
                }
            }
        }
        
        return resultString.isEmpty
    }
}
