//80 ms,时间击败 92%，内存击败36%
class Solution {
    
    func isPrime( n: Int, primesList: [Int]) -> Bool {
        
        for item in primesList {
            if (n % item == 0){
                return false
            }
        }
    
        return true
    }

    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {
            return 0
        }
      
        // init isPrime bool array
        var isPrime = Array(repeating: true, count: n)
        isPrime[0] = false
        isPrime[1] = false
        
        // count prime number
        var count = 0
        for num in 2..<n {
            guard isPrime[num] else {
                continue
            }
            
            count += 1
            
            var nextNum = num * num
            while nextNum < n {
                isPrime[nextNum] = false
                nextNum += num
            }
        }
        
        return count
    }
}


//1288 ms,时间击败 26%，内存击败83%
class Solution {

    func isPrime(_ n: Int) -> Bool {
        if n == 3 || n == 5 {//为了下面的for循环能正常进行，在这里加这个判断，只有3不满足下面循环条件
            return true
        }
        // 不在6的倍数两侧的一定不是质数  质数=6x-1/6x+1 ,x>=1
        if (n % 6 != 1 && n % 6 != 5) {
            return false;
        }

        let sqrtNum = Int(sqrt(Double(n)))
        var i = 5 
        while i <= sqrtNum {
            if n % i == 0 || n % (i + 2) == 0 {
                return false
            }
            i = i + 6
        }
        return true
    }

    func countPrimes(_ n: Int) -> Int {
        if n <= 2 {
         return 0
        }
        if n <= 3 {
          return 1;
        }

       
        var count  = 2
        var currentPrime  = 3
        var i = 1
        while currentPrime < n {
        
            currentPrime = ( i * 6 - 1)
            if currentPrime >= n {//已经超过，直接 return
                return count
            }
            if isPrime(currentPrime) {
                count = count + 1
            }
           
            currentPrime = ( i * 6 + 1)
            if currentPrime >= n { 
                return count
            }
            if isPrime(currentPrime) {   
                count = count + 1
            }
         
            i = i + 1
        }

       
        return count
    }
}