import XCTest
@testable import Mongrel

final class DocumentTests: XCTestCase {
    func testDocument() {
        let document = Root {
            VStack(spacing: .pixels(20)) {
                Text("Not Dragged")
                    .cited()
                    .underlined()
                    .styles(.fontSize("35px"), .fontWeight("300"), .fontFamily("Arial"))
                    .id("id")
                    .padding(.top, .left, .right, .bottom, length: .pixels(20))

                Text("Hello")
                    .draggable(true)
                    .on(.dragend, .updateInnerHTML(elementId: "id", value: "Dragged"))
            }
        }

        print(document)
    }
}
