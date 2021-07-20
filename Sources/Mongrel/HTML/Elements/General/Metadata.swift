/// The ``Metadata`` element defines metadata about the HTML document.
///
/// This element goes inside the head of the document and will not
/// be displayed on the page.
///
/// For more information about the ``<meta>`` tag,
/// visit https://www.w3schools.com/tags/tag_meta.asp
public struct Metadata: Attributable, EventListener {
    public var tag: String = "meta"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a metadata element with a name and content.
    ///
    /// - Parameters:
    ///   - name: The name of the metadata.
    ///   - content: The value associated with the ``name`` attribute.
    public init(name: MetadataName, content: String) {
        attributes["name"] = name.rawValue
        attributes["content"] = content
    }

    /// Creates a metadata element with an http-equiv and content.
    ///
    /// - Parameters:
    ///   - httpEquiv: The HTTP header for the information/value.
    ///   - content: The value associated with the ``http-equiv`` attribute.
    public init(httpEquiv: HTTPEquiv, content: String) {
        attributes["http-equiv"] = httpEquiv.rawValue
        attributes["content"] = content
    }
}

/// These extensions are modifiers for an ``Metadata`` element
/// and will return an ``Metadata`` element for continued use/updates.
public extension Metadata {
    /// Sets the link's attribute: `charset`.
    ///
    /// - Parameters:
    ///   - charset: The character encoding for the HTML document.
    func charset(_ charset: String) -> Metadata {
        var copy = self
        copy.attributes["charset"] = charset
        return copy
    }
}

extension Metadata: HTMLConvertible {
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
