/// The ``OptionGroup`` element is used to group related
/// options in a ``Select`` element or ``List(.data)`` element.
///
/// For more information about the ``<optgroup>`` tag,
/// visit https://www.w3schools.com/tags/tag_optgroup.asp
public struct OptionGroup: Attributable, EventListener {
    public var tag: String = "optgroup"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates an option-group with an optional label and inner content.
    ///
    /// - Parameters:
    ///   - label: The label for the option-group.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(label: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``OptionGroup`` element
/// and will return an ``OptionGroup`` element for continued use/updates.
public extension OptionGroup {
    /// Adds a condition that controls whether the element
    /// will be disabled.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``disabled``
    ///   attribute should be added.
    func disabled(_ value: Bool) -> OptionGroup {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }
}

extension OptionGroup: HTMLConvertible {
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
