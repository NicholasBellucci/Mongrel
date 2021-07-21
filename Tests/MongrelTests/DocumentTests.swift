import XCTest
@testable import Mongrel

final class DocumentTests: XCTestCase {
    func testDocument() {
        let document = Root {
            Group {
                Text("test")
            }
            .id("test")

            Button {
                .updateInnerHTML(id: "test", value: "hello")
            } content: {
                Text("Button")
            }

        }

        print(document)
    }
}
