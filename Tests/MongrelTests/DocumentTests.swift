import XCTest
@testable import Mongrel

final class DocumentTests: XCTestCase {
    func testDocument() {
        let document = Root {
            VStack(spacing: .pixels(20)) {
                Text("test")
                    .styles(InlineStyle("font-size", "35px"))
                    .id("test")

                Text("Hello")
                    .draggable(true)
                    .on(.dragend, .updateStyle(elementId: "test", style: .fontSize("5px")))
            }
        }

        print(document)
    }
}
