import XCTest
@testable import Mongrel

final class DocumentTests: XCTestCase {
    func testDocument() {
        let document = Root {
            VStack(spacing: .pixels(20)) {
                Text("test")
                    .cited()
                    .underlined()
                    .styles(.fontSize("35px"), .fontWeight("300"), .fontFamily("Arial"))
                    .id("test")

                Text("Hello")
                    .draggable(true)
                    .on(.dragend, .updateStyle(elementId: "test", style: .fontSize("5px")))
            }
        }

        print(document)
    }
}
