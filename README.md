# Mongrel

Mongrel is a Swift and HTML hybrid with a bit of support for CSS and Javascript. Using a declaritive style of programming, Mongrel makes writing HTML feel natural and easy. Mongrel also uses a SwiftUI like body structure to allow structs to be completely dedicated as an HTML page or element.

## Requirements
Xcode 12.x or a Swift 5.3x toolchain with Swift Package Manager.

## Installation

### Swift Package Manager
In order to add Mongrel to your project, simply add `.package(url: "https://github.com/NicholasBellucci/Mongrel.git", from: "0.1.0")` to your `Package.swift` file's `dependencies` and `.product(name: "Mongrel", package: "mongrel")` to the target `dependencies`. 

## Usage

Mongrel documentation is currently in the works but the project as a whole is complete, excluding future updates. To provide a very robust idea of how to use Mongrel, here is an example:

```swift
struct IndexPage: HTML {
    var body: some HTMLConvertible {
        Root(language: .en) {
            Head {
                Metadata(name: .applicationName, content: "Mongrel")
            }

            Body {
                Group {
                    Text("Welcome to Mongrel!")
                        .heading(.h1)

                    Text("A Swift and HTML hybrid supporting:")

                    List(.unordered) {
                        Text("CSS")
                            .paragraph()

                        Text("Javascript")
                            .paragraph()
                    }
                    .class("list")
                }
            }
            .id("main-body")
            .class("wrapper")
        }
    }
}
```
## License

Mongrel is, and always will be, MIT licensed. See [LICENSE](LICENSE) for details.
