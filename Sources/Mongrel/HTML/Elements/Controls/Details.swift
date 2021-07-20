/// A ``Details``specifies additional details that can be open and closed.
///
/// The ``Details`` element allows any sort of content.
public struct Details: Attributable, EventListener {
    public var tag: String = "details"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    var innerHTML: String

    /// Creates a details element with given content.
    ///
    /// - Parameters:
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<details></details>` tags.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

public extension Details {
    /// Sets the detail's attribute: `open`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``open`` should be added
    ///   based on another boolean.
    func open(if value: Bool = true) -> Details {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}

extension Details: HTMLConvertible {
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
