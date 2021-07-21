import Foundation

/// The ``Embed`` element defines a container for an external source.
///
/// For more information about the ``<embed>`` tag,
/// visit https://www.w3schools.com/tags/tag_embed.asp
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
    /// Sets the embed's attributes: ``width`` and ``height``.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    ///   - height: The height of the element, in pixels.
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Embed {
        var copy = self

        if let width = width {
            copy.attributes["width"] = "\(width)"
        }

        if let height = height {
            copy.attributes["height"] = "\(height)"
        }

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
