    import XCTest
    @testable import Mongrel

    final class MongrelTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.

            let html = html {
                body {
                    div {
                        h1 {
                            (0...10).reversed().map {
                                "\($0)…"
                            }
                        }
                    }
                }
            }

            print(html)
        }
    }
