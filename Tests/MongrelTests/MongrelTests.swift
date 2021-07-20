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

    var document: some HTMLConvertible {
        HStack {
            VStack {
                Text("Hello")
                    .paragraph()

                Text("test")
                    .span()
            }

            Paragraph("new") {
                Text("hello")
            }
            .padding([.top, .left], .pixels(10))

            Button("Test", action: "myFunction()")
        }
    }
}
