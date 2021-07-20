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

    let testArray: [String] = ["", "", "", ""]

    var body: some HTML {
        ForEach(testArray) { _ in
            Text("Test")
        }
    }
}

struct MenuView: HTMLView {
    var body: some HTML {
        Div {
            Div {
                Text("The Walk")
            }
            .classes("menuitem")

            Div {
                Text("Transport")
            }
            .classes("menuitem")

            Div {
                Text("History")
            }
            .classes("menuitem")

            Div {
                Text("Gallery")
            }
            .classes("menuitem")
        }
        .classes("menu")
    }
}

struct MainView: HTMLView {
    var body: some HTML {
        Div {
            Text("The Walk")
                .heading(.h2)

            Text("The walk from Monterosso to Riomaggiore will take you approximately two hours, give or take an hour depending on the weather conditions and your physical shape.")
                .paragraph()

            Image(src: "img_5terre.jpg")
                .styles(InlineStyle(name: "width", value: "100%"))

            Progress(max: 100)
                .value(50)
        }
        .classes("main")
    }
}

struct RightView: HTMLView {
    var body: some HTML {
        Div {
            Text("What?")
                .heading(.h1)

            Text("Cinque Terre comprises five villages: Monterosso, Vernazza, Corniglia, Manarola, and Riomaggiore.")
                .paragraph()

            Text("Where?")
                .heading(.h1)

            Text("On the northwest cost of the Italian Riviera, north of the city La Spezia.")
                .paragraph()

            Text("Price?")
                .heading(.h1)

            Text("The Walk is free!")
                .paragraph()
        }
        .classes("right")
    }
}
