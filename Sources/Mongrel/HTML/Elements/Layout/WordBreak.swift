/// The ``WordBreak`` element adds a line-break in text.
///
/// For more information about the ``<wbr>`` tag,
/// visit https://www.w3schools.com/tags/tag_wbr.asp
public struct WordBreak: Attributable, EventListener {
    public var tag: String = "wbr"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a word break element.
    public init() { }
}

extension WordBreak: HTMLConvertible {
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
