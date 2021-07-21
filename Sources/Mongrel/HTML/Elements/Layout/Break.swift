/// The ``Break`` element inserts a line break.
///
/// For more information about the ``<break>`` tag,
/// visit https://www.w3schools.com/tags/tag_break.asp
public struct Break: Attributable, EventListener {
    public var tag: String = "br"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a break element.
    public init() { }
}

extension Break: HTMLConvertible {
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

