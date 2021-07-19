    import XCTest
    @testable import Mongrel

    final class MongrelTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.

            let html = Root {
                List(.description) {
                    DescriptionTerm {
                        Text("Coffee")
                    }

                    DescriptionDetails {
                        Text("- black hot drink")
                    }
                }
            }


            print(html)
        }
    }
