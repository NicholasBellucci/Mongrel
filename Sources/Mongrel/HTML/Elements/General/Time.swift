/// The ``Time`` element defines a specific time or datetime.
///
/// For more information about the ``<time>`` tag,
/// visit https://www.w3schools.com/tags/tag_time.asp
public struct Time: Attributable {
    public var tag: String = "time"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates a time element with an optional format.
    ///
    /// - Parameters:
    ///   - format: The machine-readable format.
    public init(format: String? = nil) {
        if let format = format {
            attributes["datetime"] = format
        }
    }
}

extension Time: HTMLConvertible {
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
