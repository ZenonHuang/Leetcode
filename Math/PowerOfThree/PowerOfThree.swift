class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        return n > 0 && 1162261467 % n == 0;
    }
}