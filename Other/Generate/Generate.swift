//0 ms,时间击败 100%,内存击败 39 %
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
         if numRows == 0 {
             return []
         }
         if numRows == 1 {
             return [[1]]
         }
         if numRows == 2 {
             return [[1],[1,1]]
         }
         
         var list = [1,1]
         var result : [[Int]] = [[1],list]
        
         var preList = [Int]()
         let count = (numRows + 1)
         for i in 3..<count {

             preList = list

             list = [Int](repeating: 1, count: i)
             let listCount = (i - 1) 
             for index in 1..<listCount {
                 
                list[index] = preList[index] + preList[index - 1]
               
             }
             result.append(list)
         }
        return result
    }
}

//4 ms,时间击败 91%,内存击败 74 %
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
         if numRows == 0 {
             return []
         }
         if numRows == 1 {
             return [[1]]
         }
         if numRows == 2 {
             return [[1],[1,1]]
         }
         
         var list = [1,1]
         var result : [[Int]] = [[1],list]
         var index = 0
         var preList = [Int]()
         let count = (numRows + 1)
         for i in 3..<count {
             list = [Int](repeating: 1, count: i)
             
             preList = result[i - 2]
             index = 1 
             while index < (i - 1) {
                 
                list[index] = preList[index] + preList[index - 1]
                index = index + 1
             }
             result.append(list)
         }
        return result
    }
}