    import XCTest
    @testable import Mongrel

    final class MongrelTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.

            let html = Root {
                Body {
                    Form {
                        Label(for: "fname") {
                            Text("First name:")
                        }

                        Input(type: .email)
                            .name("fname")
                            .id("fname")

                        Break()
                        Break()

                        Input(type: .submit)
                            .value("Submit")
                            .hidden(true)
                    }
                }
                .addBooleanAttribute(.hidden)
            }



            print(html)
        }
    }
