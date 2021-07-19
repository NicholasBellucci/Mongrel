    import XCTest
    @testable import Mongrel

    final class MongrelTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.

            let html = Root {
                Head {
                    Style {
                        InternalStyle(
                            selector: "p.test",
                            styles: [
                                InlineStyle(name: "color", value: "blue"),
                            ]
                        )
                    }
                }

                Body {
                    Text("Header")
                        .heading(.h3)

                    Paragraph {
                        Text("testing")
                    }
                    .classes("test")
                }
            }

            print(html)
        }
    }
