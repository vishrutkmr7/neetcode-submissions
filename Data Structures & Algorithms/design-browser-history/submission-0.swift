class BrowserHistory {

    class PageEntry {
        var url: String
        var prev: PageEntry?
        var next: PageEntry?

        init(_ url: String) {
            self.url = url
        }
    }

    var current: PageEntry

    init(_ homepage: String) {
        self.current = PageEntry(homepage)
    }
    
    func visit(_ url: String) { // append to the linked list
        let page = PageEntry(url)
        page.prev = current
        current.next = page
        current.next?.next = nil // purge
        current = page 
    }
    
    func back(_ steps: Int) -> String {
        var steps = steps
        while steps > 0 && current.prev != nil {
            current = current.prev!
            steps -= 1
        }
        return current.url
    }
    
    func forward(_ steps: Int) -> String {
        var steps = steps
        while steps > 0 && current.next != nil {
            current = current.next!
            steps -= 1
        }
        return current.url
    }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */