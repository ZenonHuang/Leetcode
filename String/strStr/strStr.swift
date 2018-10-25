// Pass : 28 ms
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        
        let hLength = haystack.count
        let nLength = needle.count
        
        if hLength < nLength {
            return -1
        }
        
        let threshold = hLength - nLength
        
        for i in 0...threshold {
            if (haystack[haystack.index(haystack.startIndex, offsetBy: i)..<haystack.index(haystack.startIndex, offsetBy: i + nLength)] == needle) {
                return i
            }
        }
        
        return -1
    }
}
