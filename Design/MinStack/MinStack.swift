//88 ms, 击败84.87%
class MinStack {
    var stackList : [Int]
    var minNum : Int
    var count : Int
    /** initialize your data structure here. */
    init() {
         self.stackList = []
         self.minNum = 0
         self.count = 0
    }
    
    func push(_ x: Int) {
         self.stackList.append(x)
         self.count = self.count + 1
         if self.count == 1 {
             self.minNum = self.stackList[0]
         }else{
             self.minNum = min(self.minNum,x)
         }
         
         
    }
    
    func pop() {
        
        let last = self.stackList.removeLast()
        self.count = self.count - 1
        if self.count == 0{
            return
        }
        if self.count == 1 {
            self.minNum = self.stackList[0]
            return 
        }
        if last == self.minNum {
            var newMin = self.stackList[0]
            for i in 0..<self.count {
                let item = self.stackList[i]
                newMin = min(newMin,item)
                
            }
            self.minNum = newMin
            return
        }

       
    }
    
    func top() -> Int {
     
        return self.stackList[self.count-1]
    }
    
    func getMin() -> Int {
        if self.count == 1 {
            self.minNum = self.stackList[0]
            return self.stackList[0]
        }
        return self.minNum
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */