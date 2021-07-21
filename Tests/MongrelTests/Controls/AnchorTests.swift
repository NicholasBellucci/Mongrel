import XCTest
@testable import Mongrel

final class AnchorTests: XCTestCase {
    func testAnchor() {
        let anchor = Anchor { }
        XCTAssertEqual(String(describing: anchor), "<a></a>")
    }

    func testAnchorWithHref() {
        let anchor = Anchor("http://www.example.com") { }
        XCTAssertEqual(String(describing: anchor), "<a href=\"http://www.example.com\"></a>")
    }

    func testAnchorWithMailTo() {
        let anchor = Anchor(mailTo: "email@test.com") { }
        XCTAssertEqual(String(describing: anchor), "<a href=\"mailto:email@test.com\"></a>")
    }

    func testAnchorWithPhoneNumber() {
        let anchor = Anchor(call: "0000000000") { }
        XCTAssertEqual(String(describing: anchor), "<a href=\"tel:+0000000000\"></a>")
    }

    func testAnchorTextContent() {
        let anchor = Anchor { Text("Anchor") }
        XCTAssertEqual(String(describing: anchor), "<a>Anchor</a>")
    }

    func testAnchorDownloadable() {
        let anchor = Anchor { }.downloadable(true)
        XCTAssertEqual(String(describing: anchor), "<a download></a>")
    }

    func testAnchorLanguage() {
        let anchor = Anchor { }.hrefLanguage(.en, .us)
        XCTAssertEqual(String(describing: anchor), "<a hreflang=\"en-us\"></a>")
    }

    func testAnchorMedia() {
        let anchor = Anchor { }.media("image")
        XCTAssertEqual(String(describing: anchor), "<a media=\"image\"></a>")
    }

    func testAnchorPing() {
        let anchor = Anchor { }.ping("ping1", "ping2")
        XCTAssertEqual(String(describing: anchor), "<a ping=\"ping1 ping2\"></a>")
    }

    func testAnchorReferrerPolicy() {
        let anchor = Anchor { }.referrerPolicy(.sameOrigin)
        XCTAssertEqual(String(describing: anchor), "<a referrerpolicy=\"same-origin\"></a>")
    }

    func testAnchorRelationship() {
        let anchor = Anchor { }.relationship(.author)
        XCTAssertEqual(String(describing: anchor), "<a rel=\"author\"></a>")
    }

    func testAnchorWithHrefContentAndAttributes() {
        let anchor = Anchor("http://www.example.com") {
            Text("Anchor")
        }
        .downloadable(true)
        .media("image")
        .referrerPolicy(.origin)

        XCTAssertEqual(String(describing: anchor), "<a download href=\"http://www.example.com\" media=\"image\" referrerpolicy=\"origin\">Anchor</a>")
    }
}
