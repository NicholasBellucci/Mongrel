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

struct HomePage: HTMLView {
    var title: String

    var body: some HTML {
        VStack(alignment: .center) {
            Division {
                Text("1")
            }
            .styles(InlineStyle(name: "background-color", value: "coral"))

            Division {
                Text("2")
            }
            .styles(InlineStyle(name: "background-color", value: "lightblue"))

            Division {
                Text("3")
            }
            .styles(InlineStyle(name: "background-color", value: "pink"))
        }
        .frame(width: 400, height: 700, justification: .top)
        .id("main")
    }
}
