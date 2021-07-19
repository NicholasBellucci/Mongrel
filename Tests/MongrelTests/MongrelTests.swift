    import XCTest
    @testable import Mongrel

    final class MongrelTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.

            let html = Root {
                Head {
                    Script {
                        """
                        document.getElementById("demo").innerHTML = "Hello JavaScript!";
                        document.getElementById("demo").innerHTML = "Hello JavaScript!";
                        """
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
