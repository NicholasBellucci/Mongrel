/// A ``Base`` element is used to specify the base URL
/// and/or target for all relative URLs in a document.
///
/// This element is most often used in a form to collect user input.
///
/// For more information about the ``<base>`` tag,
/// visit https://www.w3schools.com/tags/tag_base.asp
public struct Base: Attributable, EventListener {
    public var tag: String = "base"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a base element with an href and target. The target
    /// default is self.
    ///
    /// - Parameters:
    ///   - href: The base URL for all relative URLs in the page.
    ///   - target: The target for all hyperlinks and forms in the page.
    public init(href: String, target: Target = .`self`) {
        attributes["href"] = href
        attributes["target"] = target.rawValue
    }
}

extension Base: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
