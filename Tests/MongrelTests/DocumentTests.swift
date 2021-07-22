import XCTest
@testable import Mongrel

final class DocumentTests: XCTestCase {
    func testDocument() {
        let document = Root {
            VStack(spacing: .pixels(20)) {
                Text("Not Dragged")
                    .id("id")
                    .styles(.fontSize("35px"), .fontWeight("300"), .fontFamily("Arial"))
                    .padding(.all, length: .pixels(20))
                    .margin([.top, .leading], length: .pixels(40))
                    .cited()
                    .underlined()

                Text("Hello")
                    .draggable(true)
                    .on(.dragend, .updateInnerHTML(elementId: "id", value: "Dragged"))
            }
        }

        print(document)
    }
}
