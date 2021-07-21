/// The ``OrderedList`` element is used create a list of a desitred type.
///
/// This list can be numerical or alphabetical.
///
/// For more information about the ``<ol>`` tag,
/// visit https://www.w3schools.com/tags/tag_ol.asp
public struct OrderedList: Attributable, EventListener {
    public var tag: String = "ol"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``OrderedList`` element
/// and will return an ``OrderedList`` element for continued use/updates.
public extension OrderedList {
    /// Adds a condition that controls whether the element
    /// will be reversed.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``reversed``
    ///   attribute should be added.
    func reversed(_ value: Bool) -> OrderedList {
        var copy = self

        if value {
            copy.attributes["reversed"] = ""
        }

        return copy
    }

    /// Sets the start value of an ordered list.
    ///
    /// - Parameters:
    ///   - value: The value used as the list's start value.
    func start(_ value: Int) -> OrderedList {
        var copy = self
        copy.attributes["start"] = "\(value)"
        return copy
    }

    /// Specifies the kind of marker to use in the list.
    ///
    /// - Parameters:
    ///   - type: The type used as the list's order type.
    func type(_ type: OrderedListType) -> OrderedList {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }
}

extension OrderedList: HTMLConvertible {
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
