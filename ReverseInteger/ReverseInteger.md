# ReverseInteger

```
func reverse(_ x: Int) -> Int {
    
     var res = 0
     var x = x
  
        while x != 0 {
            res = res * 10 + x % 10
            x = x / 10
            
            if res > Int(Int32.max) || res < Int(Int32.min) {
                return 0
            }
        }
        
        return res
    }
```

## 思路

主要是 x % 10 操作取余，拿到个位的数字。

例如：

```
16 % 10 = 6
```

 res 保存得到的数字，每 1 次循环，则利用乘 10 操作进 1 位。

 x 除以 10 ，减 1 位。
 
 最后检查 res 范围应在 Int32.max ,Int32.min 之间。 
 
 


