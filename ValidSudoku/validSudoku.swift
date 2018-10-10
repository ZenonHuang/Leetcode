//PASS,60 ms
class Solution {
    func valid(_ board:[[Character]]) -> Bool {
        //行
        var lineList   = [Character]()
        //列
        var columnList = [Character]()
        
        for i in 0..<9 {
            for j in 0..<9 {
                
                //扫描行
                var lineNum = board[i][j]
                if(!(lineNum==".")){
                    if(lineList.contains(lineNum)){
                        return false
                    }else{
                        lineList.append(lineNum)
                    }
                }
                
                
                //扫描列
                var columnNum = board[j][i]
                if(!(columnNum==".")){
                    if(columnList.contains(columnNum)){
                        return false
                    }else{
                        columnList.append(columnNum)
                    }
                }
                
                
            }
            
            lineList.removeAll()
            columnList.removeAll()
        }
        
        
        return true
    }
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var valid = true
        
        
        
        valid = self.valid(board)
        if(!valid){
            return false
        }
        
        
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
                
                
                //检查 3*3 重复
                var checkList = [Character]()
                for list in smallBoard {
                    for item in list {
                        if(!(item==".")){
                            if(checkList.contains(item)){
                                return false
                            }else{
                                checkList.append(item)
                            }
                        }
                    }
                }
                
                
                smallBoard.removeAll()
                
            }
            
        }
        
        return valid
    }
}
