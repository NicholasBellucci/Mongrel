/// A ``Progress`` element displays the completion progress of a task
///
/// Often used in conjunction with ``Javascript`` to display current values.
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

    /// Creates a progress bar with a max value. Default value is 1.
    ///
    /// - Parameters:
    ///   - max: How much work the task requires in total.
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<progress></progress>` tags.
    public init(max: Double = 1, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["max"] = "\(max)"
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Progress`` element
/// and will return an ``Progress`` element for continued use/updates.
public extension Progress {
    /// Sets the progress's attribute: `value`.
    ///
    /// - Parameters:
    ///   - value: The amount in which the task has completed.
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
