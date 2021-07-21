/// A ``Form`` element creates a form for user input.
///
/// For more information about the ``<form>`` tag,
/// visit https://www.w3schools.com/tags/tag_form.asp
public struct Form: Attributable, EventListener {
    public var tag: String = "form"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a form element.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Form`` element
/// and will return an ``Form`` element for continued use/updates.
public extension Form {
    /// Sets the form's attribute: ``accept``.
    ///
    /// - Parameters:
    ///   - charset: The character encodings to be used for form submission.
    func accept(_ charset: String) -> Form {
        var copy = self
        copy.attributes["accept-charset"] = charset
        return copy
    }

    /// Sets the form's attribute: ``action``.
    ///
    /// - Parameters:
    ///   - action: The URL of which to send the form-data on submission.
    func action(_ action: String) -> Form {
        var copy = self
        copy.attributes["action"] = action
        return copy
    }

    /// Sets the form's attribute: ``autocomplete``.
    ///
    /// - Parameters:
    ///   - value: Specifies if the form should have autocomplete.
    func autocomplete(_ value: Bool) -> Form {
        var copy = self
        copy.attributes["autocomplete"] = value ? "on" : "off"
        return copy
    }

    /// Sets the form's attribute: ``formenctype``.
    ///
    /// - Parameters:
    ///   - type: The type in which form-data should be encoded when submitting.
    func encodeType(_ type: FormEncodeType) -> Form {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    /// Sets the form's attribute: ``formmethod``.
    ///
    /// - Parameters:
    ///   - method: The HTTP method to use when sending form-data.
    func method(_ method: FormMethod) -> Form {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    /// Sets the form's attribute: ``name``.
    ///
    /// - Parameters:
    ///   - name: The name of the form.
    func name(_ name: String) -> Form {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Sets the form's attribute: ``formnovalidate``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``formnovalidate`` should be added
    ///   based on another boolean.
    func noValidate(if value: Bool) -> Form {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = ""
        }

        return copy
    }

    /// Sets the form's attribute: ``rel``.
    ///
    /// - Parameters:
    ///   - relationship: The relationship between the current document
    ///   and the linked document.
    func relationship(_ relationship: Relationship.Form) -> Form {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Sets the form's attribute: ``target``.
    ///
    /// - Parameters:
    ///   - target: The target to display the response after submitting the form-data.
    func target(_ target: Target = .`self`) -> Form {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }
}

extension Form: HTMLConvertible {
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
