/// The ``Source`` element is used to define CSS styles for a document.
///
/// For more information about the ``<style>`` tag,
/// visit https://www.w3schools.com/tags/tag_style.asp
public struct Style: Attributable {
    public var tag: String = "style"
    public var attributes: [String : String] = [:]
    public var styles: [String: String] = [:]

    private var innerCSS: String

    /// Creates a style element.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@StyleBuilder _ content: () -> [InternalStyle]) {
        attributes["type"] = "text/css"
        innerCSS = content()
            .map { String(describing: $0) }
            .joined(separator: " ")
    }
}

extension Style: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerCSS)</\(tag)>"
    }
}
