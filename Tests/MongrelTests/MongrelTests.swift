import XCTest
@testable import Mongrel

final class MongrelTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        let page = HomePage()

        print(page)
    }
}

struct HomePage: HTMLPage {
    var body: some HTML {
        Option {
            Text("Hello")
        }
        .value("hello")
    }
}
