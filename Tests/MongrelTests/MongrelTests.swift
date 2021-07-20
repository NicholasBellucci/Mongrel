import XCTest
@testable import Mongrel

final class MongrelTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        let page = HomePage(title: "New Page")

        print(page)
    }
}

struct HomePage: HTML {
    var title: String

    var body: some HTMLConvertible {
        Text("Now")
    }
}
