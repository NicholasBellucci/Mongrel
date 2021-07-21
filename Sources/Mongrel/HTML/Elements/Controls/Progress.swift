/// A ``Progress`` element displays the completion progress of a task
///
/// This element is often used in conjunction with ``Javascript`` to display current values.
///
/// For more information about the ``<progress>`` tag,
/// visit https://www.w3schools.com/tags/tag_progress.asp
public struct Progress: Attributable, EventListener {
    public var tag: String = "progress"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates a basic progress bar with a max value. Default value is 1.
    ///
    /// - Parameters:
    ///   - max: How much work the task requires in total.
    public init(max: Double = 1) {
        attributes["max"] = "\(max)"
    }

    /// Creates a progress bar with a max value and inner content. Default value is 1.
    ///
    /// - Parameters:
    ///   - max: How much work the task requires in total.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(max: Double = 1, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["max"] = "\(max)"
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Progress`` element
/// and will return an ``Progress`` element for continued use/updates.
public extension Progress {
    /// Specifies how much of the task has been completed.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the completion value.
    func value(_ value: Double) -> Progress {
        var copy = self
        copy.attributes["value"] = "\(value)"
        return copy
    }
}

extension Progress: HTMLConvertible {
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
