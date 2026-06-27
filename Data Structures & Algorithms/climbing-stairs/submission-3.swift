class Solution {
    var memo = [Int: Int]()

    func climbStairs(_ n: Int) -> Int {
        // recursion solution
        if n <= 2 { return n }
        if let cached = memo[n] { return cached }
        memo[n] = climbStairs(n - 1) + climbStairs(n - 2)
        return memo[n]!
    }
}