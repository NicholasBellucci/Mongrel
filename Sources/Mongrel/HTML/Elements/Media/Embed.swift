/// The ``Embed`` element defines a container for an external source.
public struct Embed: Attributable, EventListener {
    public var tag: String = "embed"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a embed element with a source and type.
    ///
    /// - Parameters:
    ///   - src: The address of the external file.
    ///   - type: The media type of the embeded content.
    public init(src: String, type: String) {
        attributes["src"] = src
        attributes["type"] = type
    }
}

/// These extensions are modifiers for an ``Embed`` element
/// and will return an ``Embed`` element for continued use/updates.
public extension Embed {
    /// Sets the embed's attribute: ``height``.
    ///
    /// - Parameters:
    ///   - height: The height of the element, in pixels.
    func height(_ height: Double) -> Embed {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }
    
    /// Sets the embed's attribute: ``width``.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    func width(_ width: Double) -> Embed {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
    }
}

extension Embed: HTMLConvertible {
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
