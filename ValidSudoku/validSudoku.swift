//待补全:小九宫格重复检测
class Solution {
    
    func valid(_ board:[[Character]]) -> Bool {
        //行
        var lineList   = [Character]()
        //列
        var columnList = [Character]()
        
        for i in 0..<3 {
            for j in 0..<3 {
                
                //扫描行
                var lineNum = board[i][j]
                if(!(lineNum==".")){
                    if(lineList.contains(lineNum)){
                        print("重复 \(lineNum) 坐标: \(i) \(j)")
                        return false
                    }else{
                        lineList.append(lineNum)
                    }
                }
                
                
                //扫描列
                var columnNum = board[j][i]
                if(!(columnNum==".")){
                    if(columnList.contains(columnNum)){
                        print("重复 \(columnNum) 坐标: \(j) \(i)")
                        return false
                    }else{
                        columnList.append(columnNum)
                    }
                }
                
                
            }
            
            lineList.removeAll()
            columnList.removeAll()
        }
        
        print("无重复")
        
        return true
    }
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var valid = true
        var smallBoard = [[Character]]()
        
        //stride正向跳跃遍历
        for i in stride(from: 0, to: 9, by: 3) {
            for j in stride(from: 0, to: 9, by: 3) {
                
                var line0 = [board[i][j],board[i][j+1],board[i][j+2]]
                var line1 = [board[i+1][j],board[i+1][j+1],board[i+1][j+2]]
                var line2 = [board[i+2][j],board[i+2][j+1],board[i+2][j+2]]
                smallBoard.append(line0)
                smallBoard.append(line1)
                smallBoard.append(line2)
                
                print(smallBoard)
                print("-----")
                
                valid = self.valid(smallBoard)
                if(!valid){
                    return false
                }
                
                smallBoard.removeAll()
                
            }
            
        }
        
        return valid
    }
}
