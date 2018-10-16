//Pass: 76 ms
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var max = 0
        
        guard prices.count > 1 else {
            return max
        }
        
        for i in 1..<prices.count where prices[i] > prices[i - 1] {
            max += prices[i] - prices[i - 1]
        }
        
        return max
    }
}
