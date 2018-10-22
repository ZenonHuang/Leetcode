//Pass : 28 ms
class Solution {
    func countAndSay(_ n: Int) -> String {
        
        var oldString = "1";
        
        if n==1 {
            return oldString
        }
        
        for _ in 1..<n {
            
            var newString = ""
            var oldChars = Array(oldString)
            var count    = 1
            
            
            for i in 0..<oldChars.count  {
                if (i + 1 < oldChars.count && oldChars[i] == oldChars[i + 1]) {
                    count += 1
                } else {
                    newString.append("\(count)")
                    newString.append(oldChars[i])
                    count = 1
                }
            }
            
            oldString = newString
        }
        
        return oldString;
    }
}
