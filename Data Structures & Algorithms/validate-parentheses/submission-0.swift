class Solution {
    func isValid(_ s: String) -> Bool {
        let opens: [Character] = ["(", "{", "["]
        let closes: [Character] = [")", "}", "]"]
        var stack: [Character] = []

        for char in s {
            if opens.contains(char) {
                stack.append(char)
            } else {
                guard let last = stack.last,
                      let closeIndex = closes.firstIndex(of: char),
                      opens[closeIndex] == last else {
                    return false
                }
                stack.removeLast()
            }
        }

        return stack.isEmpty
    }
}
