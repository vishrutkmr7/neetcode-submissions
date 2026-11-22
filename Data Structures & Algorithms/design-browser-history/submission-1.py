class Page:
    def __init__(self, url, nextPage=None, prevPage=None) -> None:
        self.url = url
        self.next = nextPage
        self.prev = prevPage

class BrowserHistory:

    def __init__(self, homepage: str):
        self.current = Page(homepage)

    def visit(self, url: str) -> None:
        page = Page(url)
        page.prev = self.current
        self.current.next = page
        self.current.next.next = None
        self.current = page

    def back(self, steps: int) -> str:
        while steps > 0 and self.current.prev is not None:
            self.current = self.current.prev
            steps -= 1
        return self.current.url

    def forward(self, steps: int) -> str:
        while steps > 0 and self.current.next is not None:
            self.current = self.current.next
            steps -= 1

        return self.current.url


# Your BrowserHistory object will be instantiated and called as such:
# obj = BrowserHistory(homepage)
# obj.visit(url)
# param_2 = obj.back(steps)
# param_3 = obj.forward(steps)