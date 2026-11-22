class BrowserHistory:
    def __init__(self, homepage):
        self.history = [homepage]
        self.curr = 0
        self.last = 0

    def visit(self, url):
        self.curr += 1
        if self.curr < len(self.history):
            self.history[self.curr] = url
        else:
            self.history.append(url)
        self.last = self.curr

    def back(self, steps):
        self.curr = max(0, self.curr - steps)
        return self.history[self.curr]

    def forward(self, steps):
        self.curr = min(self.last, self.curr + steps)
        return self.history[self.curr]
        


# Your BrowserHistory object will be instantiated and called as such:
# obj = BrowserHistory(homepage)
# obj.visit(url)
# param_2 = obj.back(steps)
# param_3 = obj.forward(steps)