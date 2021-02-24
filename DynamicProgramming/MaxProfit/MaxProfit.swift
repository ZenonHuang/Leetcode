

// 1120 ms ms,击败了 51.08%
// 17.4 MB,击败了 23.39%
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
    
        guard prices.count > 1 else {
            return 0
        }

        var maxProfit = 0
        var minPrice  = prices[0]
        //遍历求最小
        for i in 1..<prices.count {
            //min 比较
            if prices[i] > minPrice {
                maxProfit = max(maxProfit, prices[i] - minPrice)
            }else{//<=min,更新 min
                minPrice = prices[i]
            }
        }
        
        return maxProfit
    }
}

// 1140 ms ms,击败了 48.92%
// 17.3 MB,击败了 21.78%
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {

        guard prices.count > 1 else {
            return 0
        }
     

        var maxProfit = 0
        var minPrice  = prices[0]
        //遍历求最小
        for i in 1..<prices.count {
            //min 比较
            if prices[i] > minPrice {
                
                if (prices[i] - minPrice) > maxProfit {
                    maxProfit = (prices[i] - minPrice)
                } 

                
            }else{//<=min,更新 min
                minPrice = prices[i]
            }

            
        }
        
        return maxProfit

    }
}

// 1176 ms ms,击败了 34.68%
// 17.5 MB,击败了 12.37%%
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {

        guard prices.count > 1 else {
            return 0
        }
     
        var maxProfit = 0
        var minPrice  = prices[0]

        for i in 1..<prices.count {
            
            if prices[i] > minPrice {
                let profit = prices[i] - minPrice
                maxProfit = profit > maxProfit ? profit : maxProfit 
            }

            //更新 min
            minPrice = ( prices[i] < minPrice ) ? prices[i] : minPrice
        }
        
        return maxProfit

    }
}


// 1280 ms,击败了 13.71%
// 17.4 MB,击败了 23.39%
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
     
        var maxProfit = 0
        var minPrice  = prices[0]
        for i in 1..<prices.count {
            
            minPrice = ( prices[i] < minPrice ) ? prices[i] : minPrice

            if prices[i] > prices[i - 1] {
                let profit = prices[i] - minPrice
                maxProfit = (profit > maxProfit ) ? profit : maxProfit
            }
        }
        return maxProfit

    }
}



