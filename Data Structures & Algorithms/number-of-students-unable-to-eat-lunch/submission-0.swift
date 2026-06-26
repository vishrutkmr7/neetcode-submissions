class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var count = [0: 0, 1: 0]

        // update counts
        for s in students {
            count[s, default: 0] += 1
        }

        for sandwich in sandwiches {
            if count[sandwich] == 0 {
                // nobody wants this sandwich — everyone remaining is stuck
                return count[0]! + count[1]!
            }
            count[sandwich]! -= 1   // one student takes it and leaves
        }

        return 0
    }
}