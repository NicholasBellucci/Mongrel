import XCTest
@testable import Mongrel

final class DocumentTests: XCTestCase {
    func testDocument() {
        let document = Root {
            Parameter(name: "test", value: "value")
        }

        print(document)
    }
}
