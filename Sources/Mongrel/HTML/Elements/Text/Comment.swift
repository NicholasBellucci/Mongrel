/// The ``Comment`` element is used to insert comments in the
/// source code. Comments are not displayed in the browsers.
///
/// For more information about the ``<!-->`` tag,
/// visit https://www.w3schools.com/tags/tag_comment.asp
public struct Comment {
    var text: String

    /// Creates a comment element with text.
    ///
    /// - Parameters:
    ///   - text: The text value of the comment.
    public init(_ text: String) {
        self.text = text
    }
}

extension Comment: HTMLConvertible {
    public var description: String {
        "<!-- \(text) -->"
    }

    public var debugDescription: String {
        "<!-- \(text) -->"
    }
}
