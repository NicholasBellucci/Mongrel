/// An ``Button`` element defines a clickable button.
///
/// This element can contain text and other elements.
///
/// For more information about the ``<button>`` tag,
/// visit https://www.w3schools.com/tags/tag_button.asp
public struct Button: Attributable {
    public var tag: String = "button"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates a button with a title and an optional ``onclick`` action.
    ///
    /// - Parameters:
    ///   - title: The title text for the button.
    ///   - action: The action script represented as a string.
    public init<S>(_ title: S, action: MongrelJS? = nil) where S : StringProtocol {
        attributes["type"] = ButtonType.button.rawValue
        attributes["onclick"] = action?.stringValue
        innerHTML = String(describing: title)
    }

    /// Creates a button with an ``onclick`` action and content.
    ///
    /// - Parameters:
    ///   - action: The action script represented as a string.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(action: () -> MongrelJS, @HTMLBuilder content: () -> HTMLConvertible) {
        attributes["type"] = ButtonType.button.rawValue
        attributes["onclick"] = action().stringValue
        innerHTML = content().stringValue
    }

    /// Creates a button with inner content.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder content: () -> HTMLConvertible) {
        attributes["type"] = ButtonType.button.rawValue
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Button`` element
/// and will return an ``Button`` element for continued use/updates.
public extension Button {
    /// Adds a condition that controls whether the element
    /// will be focused automatically on page load.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func autofocused(_ value: Bool) -> Button {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be disabled.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``disabled``
    ///   attribute should be added.
    func disabled(_ value: Bool) -> Button {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Specifies which form the button belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> Button {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Specifies where to send the form-data when a form is submitted.
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - url: The URL to use as the destination URL.
    func formAction(_ url: String) -> Button {
        var copy = self
        copy.attributes["formaction"] = url
        return copy
    }

    /// Specifies how form-data should be encoded before sending it to a server.
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - type: The type to use as the encoding type.
    func formEncodeType(_ type: FormEncodeType) -> Button {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    /// Sets the HTTP method for which to send the form-data.
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - method: The method to use as the form method.
    func formMethod(_ method: FormMethod) -> Button {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    /// Specifies that the form-data should not be validated on submission.
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``formnovalidate``
    ///   attribute should be added.
    func formNoValidate(_ value: Bool) -> Button {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = "formnovalidate"
        }

        return copy
    }

    /// Specifies where to display the response after submitting the form.
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - target: The target to use as the button's form target.
    func formTarget(_ target: Target) -> Button {
        var copy = self
        copy.attributes["formtarget"] = target.rawValue
        return copy
    }

    /// Sets the name for the button.
    ///
    /// - Parameters:
    ///   - name: The name to use as the button's name.
    func name(_ name: String) -> Button {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Specifies the type of button.
    ///
    /// - Parameters:
    ///   - type: The type to use as the button's type.
    func type(_ type: ButtonType) -> Button {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Sets an initial value for the button.
    ///
    /// - Parameters:
    ///   - value: The value to use as the inital value.
    func value(_ value: String) -> Button {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }
}

public extension Button {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> Button {
        guard let copy: Self = self.accessKey(key) else { return self }
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> Button {
        guard let copy: Self = self.allowsSpellcheck(value) else { return self }
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> Button {
        guard let copy: Self = self.class(name) else { return self }
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> Button {
        guard let copy: Self = self.contentEditable(value) else { return self }
        return copy
    }

    /// Sets an attribute value for a given key.
    ///
    /// - Parameters:
    ///   - key: The key to use as the attribute key.
    ///   - value: The value to use as the attribute value.
    func customAttribute(key: String, value: String) -> Button {
        guard let copy: Self = self.customAttribute(key: key, value: value) else { return self }
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> Button {
        guard let copy: Self = self.draggable(value) else { return self }
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> Button {
        guard let copy: Self = self.hidden(value) else { return self }
        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> Button {
        guard let copy: Self = self.id(id) else { return self }
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> Button {
        guard let copy: Self = self.language(code, country: country) else { return self }
        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> Button {
        guard let copy: Self = self.setMargins(edges, length: length) else { return self }
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> Button {
        guard let copy: Self = self.setPadding(edges, length: length) else { return self }
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> Button {
        guard let copy: Self = self.setStyles(styles: styles) else { return self }
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> Button {
        guard let copy: Self = self.tabIndex(index) else { return self }
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> Button {
        guard let copy: Self = self.title(title) else { return self }
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> Button {
        guard let copy: Self = self.translated(value) else { return self }
        return copy
    }
}

extension Button: HTMLConvertible {
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
