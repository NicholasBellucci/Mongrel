/// A ``Map`` element defines the clickable areas within an image.
///
/// For more information about the ``<map>`` tag,
/// visit https://www.w3schools.com/tags/tag_map.asp
public struct Map: Attributable, EventListener {
    public var tag: String = "map"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a map with a name.
    ///
    /// - Parameters:
    ///   - name: The name of the map.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(_ name: String, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["name"] = name
        innerHTML = content().stringValue
    }
}

extension Map: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}
