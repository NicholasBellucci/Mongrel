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
        Body {
            Div {
                Text("Cinque Terre")
                    .heading(.h1)
                Text("Resize the browser window")
                    .heading(.h3)
            }
            .styles(
                InlineStyle(name: "background-color", value: "#f1f1f1"),
                InlineStyle(name: "padding", value: "15px")
            )

            Div {
                MenuView()

                MainView()

                RightView()
            }
            .styles(InlineStyle(name: "overflow", value: "auto"))

            Div {
                Text("This web page is a part of a demonstration of fluid web design made by w3schools.com. Resize the browser window to see the content respond to the resizing.")
            }
            .styles(
                InlineStyle(name: "background-color", value: "#f1f1f1"),
                InlineStyle(name: "text-align", value: "center"),
                InlineStyle(name: "padding", value: "10px"),
                InlineStyle(name: "margin-top", value: "7px"),
                InlineStyle(name: "font-size", value: "12px")
            )
        }
        .styles(InlineStyle(name: "font-family", value: "Verdana"))
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
