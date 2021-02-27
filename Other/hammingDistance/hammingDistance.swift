
//0 ms,时间击败 100%
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        return (x ^ y).nonzeroBitCount
    }
}

//4 ms,时间击败 90%
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var xor = x ^ y;
    var distance = 0;
    while (xor != 0) {
      distance += 1;
      // remove the rightmost bit of '1'
      xor = xor & (xor - 1);
    }
    return distance;
    }
}