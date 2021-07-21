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
    /// Sets the list's attribute: ``reversed``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``reversed`` should be added
    ///   based on another boolean.
    func reversed(if value: Bool = true) -> OrderedList {
        var copy = self

        if value {
            copy.attributes["reversed"] = ""
        }

        return copy
    }

    /// Sets the list's attribute: ``start``.
    ///
    /// - Parameters:
    ///   - value: The start value of the list.
    func start(_ value: Int) -> OrderedList {
        var copy = self
        copy.attributes["start"] = "\(value)"
        return copy
    }

    /// Sets the list's attribute: ``type``.
    ///
    /// - Parameters:
    ///   - type: The kind of marker used in the list.
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
