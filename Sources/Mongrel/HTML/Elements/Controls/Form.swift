/// A ``Form`` element creates a form for user input.
///
/// For more information about the ``<form>`` tag,
/// visit https://www.w3schools.com/tags/tag_form.asp
public struct Form: Attributable, EventListener {
    public var tag: String = "form"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a form element with inner content.
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
    /// Sets the character encodings that are used when submitting
    /// the form.
    ///
    /// - Parameters:
    ///   - charset: The charset used as the form's accepted charset.
    func accept(_ charset: String) -> Form {
        var copy = self
        copy.attributes["accept-charset"] = charset
        return copy
    }

    /// Specifies where to send the form-data when a form is submitted.
    ///
    /// - Parameters:
    ///   - url: The URL used as the destination URL.
    func action(_ url: String) -> Form {
        var copy = self
        copy.attributes["action"] = url
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will allow autocomplete.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func allowsAutocomplete(_ value: Bool) -> Form {
        var copy = self
        copy.attributes["autocomplete"] = value ? "on" : "off"
        return copy
    }

    /// Specifies how the form-data should be encoded when submitting.
    /// Only valid when form ``method`` is post.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the encode type.
    func encodeType(_ type: FormEncodeType) -> Form {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    /// Sets the HTTP method to use when sending form-data.
    ///
    /// - Parameters:
    ///   - method: The method to be used as the form method.
    func method(_ method: FormMethod) -> Form {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    /// Sets the name of the form.
    ///
    /// - Parameters:
    ///   - name: The name to be used as the form name.
    func name(_ name: String) -> Form {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will not validate when submitted.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``novalidate``
    ///   attribute should be added.
    func noValidate(_ value: Bool) -> Form {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = ""
        }

        return copy
    }

    /// Specifies the relationship between the current document and
    /// the linked document.
    ///
    /// - Parameters:
    ///   - relationship: The relationship to use as the form relationship.
    func relationship(_ relationship: Relationship.Form) -> Form {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    /// Specifies where to display the response that is received after
    /// submitting the form.
    ///
    /// - Parameters:
    ///   - target: The target to use as the form target.
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
