/// The ``HorizontalDivider`` element creates a horizontal rule
/// that is used to separate content.
///
/// For more information about the ``<break>`` tag,
/// visit https://www.w3schools.com/tags/tag_hr.asp
public struct HorizontalDivider: Attributable {
    public var tag: String = "hr"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a horizontal divider element.
    public init() { }
}

extension HorizontalDivider: HTMLConvertible {
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
