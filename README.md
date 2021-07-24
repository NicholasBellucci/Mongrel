# Mongrel

Mongrel is a Swift and HTML hybrid with a bit of support for CSS and Javascript. Using a declaritive style of programming, Mongrel makes writing HTML feel natural and easy. Mongrel also uses a SwiftUI like body structure allowing structs to be completely dedicated as an HTML page or element.

## Requirements
Xcode 12.x or a Swift 5.3x toolchain with Swift Package Manager.

## Installation

### Swift Package Manager
In order to add Mongrel to your project, simply add `.package(url: "https://github.com/NicholasBellucci/mongrel.git", from: "0.1.0")` to your `Package.swift` file's `dependencies` and `.product(name: "Mongrel", package: "mongrel")` to the target `dependencies`. 

## Usage

Mongrel documentation is currently in the works but the project as a whole is complete, excluding future updates. To provide a very robust idea of how to use Mongrel, here is an example:

```swift
import Mongrel

struct IndexPage: HTML {
    var title: String = "Welcome to Mongrel!"
    var subtitle: String = "A Swift and HTML hybrid supporting:"

    var body: some HTMLConvertible {
        Root(language: .en) {
            Head {
                Metadata(name: .applicationName, content: "Mongrel")
            }

            Body {
                Group {
                    Text(title)
                        .heading(.h1)

                    Text(subtitle)

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

/// The HTML protocol conforms to HTMLConvertible which conforms to
/// CustomStringConvertible and CustomDebugStringConvertible. This
/// means that to get the resulting HTML simply use String(describing: IndexPage()).

print(IndexPage())
```
## License

Mongrel is, and always will be, MIT licensed. See [LICENSE](LICENSE) for details.
