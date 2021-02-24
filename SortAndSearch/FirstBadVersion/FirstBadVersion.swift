/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {

    var left = 1;
    var right = n;
    while (left < right) {
        //不直接写 left +right 避免溢出问题
        var mid = left + (right - left) / 2;
        
        if (isBadVersion(mid)) {
            right = mid;
        } else {
            left = mid + 1;
        }
    }
        return left;
    }
}