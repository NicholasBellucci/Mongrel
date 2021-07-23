/// A ``DropDown`` element is used to create a drop-down list.
///
/// This element is most often used in a form to collect user input.
///
/// For more information about the ``<select>`` tag,
/// visit https://www.w3schools.com/tags/tag_select.asp
public struct DropDown: Attributable {
    public var tag: String = "select"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a drop-down list element with an optional id, optional name and inner content.
    ///
    /// - Parameters:
    ///   - id: The id of the drop-down list element.
    ///   - name: The name of the drop-down list element.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(id: String? = nil, name: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["id"] = id
        attributes["name"] = name
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``DropDownList`` element
/// and will return an ``DropDownList`` element for continued use/updates.
public extension DropDown {
    /// Adds a condition that controls whether the element
    /// will allow multiple values.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``multiple``
    ///   attribute should be added.
    func allowsMultipleValues(_ value: Bool) -> DropDown {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be focused automatically on page load.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func autofocused(_ value: Bool) -> DropDown {
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
    func disabled(_ value: Bool) -> DropDown {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Specifies which form the drop-down list belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> DropDown {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the name for the drop-down list.
    ///
    /// - Parameters:
    ///   - name: The name to use as the list's name.
    func name(_ name: String) -> DropDown {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Adds a condition that controls whether the element
    /// must have a selected value before submitting.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``disabled``
    ///   attribute should be added.
    func required(_ value: Bool) -> DropDown {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    /// Sets the number of visible options in a drop-down list.
    ///
    /// - Parameters:
    ///   - size: The size to be used as the list's size.
    func size(_ size: Int) -> DropDown {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }
}

public extension DropDown {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> DropDown {
        guard let copy: Self = self.accessKey(key) else { return self }
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> DropDown {
        guard let copy: Self = self.allowsSpellcheck(value) else { return self }
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> DropDown {
        guard let copy: Self = self.class(name) else { return self }
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> DropDown {
        guard let copy: Self = self.contentEditable(value) else { return self }
        return copy
    }

    /// Sets an attribute value for a given key.
    ///
    /// - Parameters:
    ///   - key: The key to use as the attribute key.
    ///   - value: The value to use as the attribute value.
    func customAttribute(key: String, value: String) -> DropDown {
        guard let copy: Self = self.customAttribute(key: key, value: value) else { return self }
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> DropDown {
        guard let copy: Self = self.draggable(value) else { return self }
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> DropDown {
        guard let copy: Self = self.hidden(value) else { return self }
        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> DropDown {
        guard let copy: Self = self.id(id) else { return self }
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> DropDown {
        guard let copy: Self = self.language(code, country: country) else { return self }
        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> DropDown {
        guard let copy: Self = self.setMargins(edges, length: length) else { return self }
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> DropDown {
        guard let copy: Self = self.setPadding(edges, length: length) else { return self }
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> DropDown {
        guard let copy: Self = self.setStyles(styles: styles) else { return self }
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> DropDown {
        guard let copy: Self = self.tabIndex(index) else { return self }
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> DropDown {
        guard let copy: Self = self.title(title) else { return self }
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> DropDown {
        guard let copy: Self = self.translated(value) else { return self }
        return copy
    }
}

extension DropDown: HTMLConvertible {
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
