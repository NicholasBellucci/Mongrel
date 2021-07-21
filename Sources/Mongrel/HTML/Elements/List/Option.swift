/// The ``Option`` element defines an option in a
/// ``Select`` element or ``List(.data)`` element.
///
/// For more information about the ``<option>`` tag,
/// visit https://www.w3schools.com/tags/tag_option.asp
public struct Option: Attributable, EventListener {
    public var tag: String = "option"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an option with an optional value.
    ///
    /// - Parameters:
    ///   - value: The value of the option.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(value: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["value"] = value
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Option`` element
/// and will return an ``Option`` element for continued use/updates.
public extension Option {
    /// Sets the option's attribute: ``disabled``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``disabled`` should be added
    ///   based on another boolean.
    func disabled(if value: Bool = true) -> Option {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Sets the option's attribute: ``label``.
    ///
    /// - Parameters:
    ///   - label: A shorter label for an option.
    func label(_ label: String) -> Option {
        var copy = self
        copy.attributes["label"] = label
        return copy
    }

    /// Sets the option's attribute: ``selected``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``selected`` should be added
    ///   based on another boolean.
    func selected(if value: Bool = true) -> Option {
        var copy = self

        if value {
            copy.attributes["selected"] = ""
        }

        return copy
    }
}

extension Option: HTMLConvertible {
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
