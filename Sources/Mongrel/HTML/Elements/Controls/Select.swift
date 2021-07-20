/// A ``Select`` element is used to create a drop-down list.
///
/// This element is most often used in a form to collect user input.
public struct Select: Attributable, EventListener {
    public var tag: String = "select"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a select element with an optional id and name.
    ///
    /// - Parameters:
    ///   - id: The id of the select element.
    ///   - name: The name of the select element.
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<select></select>` tags.
    public init(id: String? = nil, name: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["id"] = id
        attributes["name"] = name
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Select`` element
/// and will return an ``Select`` element for continued use/updates.
public extension Select {
    /// Sets the select's attribute: `multiple`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``multiple`` should be added
    ///   based on another boolean.
    func allowsMultipleValues(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    /// Sets the select's attribute: `autofocus`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``autofocus`` should be added
    ///   based on another boolean.
    func autofocus(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    /// Sets the select's attribute: `disabled`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``disabled`` should be added
    ///   based on another boolean.
    func disabled(if value: Bool = true) -> Select {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Sets the select's attribute: `form`.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the input belongs.
    func formId(_ id: String) -> Select {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the select's attribute: `name`.
    ///
    /// - Parameters:
    ///   - name: The name of the select.
    ///
    /// For more information, visit https://www.w3schools.com/tags/tag_select.asp
    func name(_ name: String) -> Select {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Sets the select's attribute: `required`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``required`` should be added
    ///   based on another boolean.
    func required(_ value: Bool) -> Select {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    /// Sets the select's attribute: `size`.
    ///
    /// - Parameters:
    ///   - size: The number of visible options in a drop-down list.
    func size(_ size: Int) -> Select {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }
}

extension Select: HTMLConvertible {
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
