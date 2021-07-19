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
        Root(language: .en) {
            Body {
                Text("The video element")
                    .heading(.h1)

                Video {
                    Source(url: "movie.mp4")
                        .type("video/mp4")

                    Source(url: "movie.ogg")
                        .type("video/ogg")
                }
                .width(320)
                .height(240)
                .controls()
            }
        }
    }
}
