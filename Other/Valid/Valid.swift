//4 ms,时间击败 96%,内存击败 96 %
class Solution {
    func isValid(_ s: String) -> Bool {
        var count = s.count
        if count % 2 == 1 {
            return false
        }
        
        var charStack = [Character]()
        for c in s {
            switch c {
            case "{","[","(":
                charStack.append(c)
            case "}":
                if charStack.popLast() != "{" {
                    return false
                }
            case "]":
                if charStack.popLast() != "[" {
                    return false
                }
            case ")":
                if charStack.popLast() != "(" {
                    return false
                }
            default: 
                break
            }
        }
        return charStack.isEmpty
    }
}

//4 ms,时间击败 96%,内存击败 77 %
class Solution {
    func isValid(_ s: String) -> Bool {
        var count = s.count
        if count % 2 == 1 {
            return false
        }
        
        var charStack = [Character]()
        for c in s {
            switch c {
            case "{","[","(":
                charStack.append(c)
            case "}":
                guard (!charStack.isEmpty && charStack.removeLast() == "{") else {
                    return false
                }
            case "]":
                guard (!charStack.isEmpty && charStack.removeLast() == "[") else {
                    return false
                }
            case ")":
                guard (!charStack.isEmpty && charStack.removeLast() == "(") else {
                    return false
                }
            default: 
                break
            }
        }
        return charStack.isEmpty
    }
}