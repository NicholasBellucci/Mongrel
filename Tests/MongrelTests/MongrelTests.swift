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

struct HomePage: HTMLPage {
    var title: String

    var body: some HTML {
        Root(language: .en) {
            Head {
                Title {
                    Text("Title of the document")
                }
            }

            Body {
                Meter(value: 2)
                    .min(0)
                    .max(10)
            }
        }
    }
}
