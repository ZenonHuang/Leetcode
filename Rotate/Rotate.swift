//Pass: 32 ms
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        
        let n = matrix.count
        
        var list = matrix
        for i in 0..<n {
            for j in (0..<n) {
                list[i][(n-1)-j]=matrix[j][i]
            }
        }
        
        matrix = list
        
    }
}
