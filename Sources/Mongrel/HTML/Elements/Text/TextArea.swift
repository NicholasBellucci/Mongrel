import Foundation

/// The ``TextArea`` element defines a multi-line text input control.
///
/// This element can hold an unlimited number of characters, and the
/// text renders in a fixed-width font.
///
/// For more information about the ``<textarea>`` tag,
/// visit https://www.w3schools.com/tags/tag_textarea.asp
public struct TextArea: Attributable {
    public var tag: String = "textarea"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a text area element with inner content.
    ///
    /// - Parameters:
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``TextArea`` element
/// and will return an ``TextArea`` element for continued use/updates.
public extension TextArea {
    /// Adds a condition that controls whether the element
    /// will be focused automatically on page load.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func autofocus(_ value: Bool) -> TextArea {
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
    func disabled(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Specifies which form the text area belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> TextArea {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the maximum number of characters allowed in the text area element.
    ///
    /// - Parameters:
    ///   - length: The length to be used as the text area's max length.
    func maxLength(_ length: Int) -> TextArea {
        var copy = self
        copy.attributes["maxlength"] = "\(length)"
        return copy
    }

    /// Sets the name for the text area.
    ///
    /// - Parameters:
    ///   - name: The name to use as the button's name.
    func name(_ name: String) -> TextArea {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Specifies a short hint that describes the expected value of the text area element.
    ///
    /// - Parameters:
    ///   - text: The text to be used as the text area's placeholder.
    func placeholder(_ text: String) -> TextArea {
        var copy = self
        copy.attributes["placeholder"] = text
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be read-only.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``readonly``
    ///   attribute should be added.
    func readonly(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["readonly"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// must be filled out before submitting.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``required``
    ///   attribute should be added.
    func required(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    /// Specifies the visible number of lines in the text area.
    ///
    /// - Parameters:
    ///   - rows: The amount of rows to be used as the text area's row count.
    func rows(_ count: Int) -> TextArea {
        var copy = self
        copy.attributes["rows"] = "\(count)"
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will submit text direction.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``dirname``
    ///   attribute should be added.
    func submitTextDirection(_ value: Bool) -> TextArea {
        var copy = self

        if let name = copy.attributes["name"] {
            copy.attributes["dirname"] = "\(name).dir"
        }

        return copy
    }

    /// Specifies how the text in the text area is to be wrapped when submitted
    /// in a form.
    ///
    /// - Parameters:
    ///   - wrap: The wrap to be used as the text area's wrap.
    func wrap(_ wrap: TextWrap) -> TextArea {
        var copy = self
        copy.attributes["wrap"] = wrap.rawValue
        return copy
    }
}

public extension TextArea {
    /// Specifies a shortcut key to activate/focus an element.
    ///
    /// - Parameters:
    ///   - key: The key to be used as the element's access key.
    func accessKey(_ key: String) -> TextArea {
        guard let copy: Self = self.accessKey(key) else { return self }
        return copy
    }

    /// Specifies whether the element is to have its spelling and
    /// grammar checked.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``spellcheck``
    ///   attribute should be added.
    func allowsSpellcheck(_ value: Bool) -> TextArea {
        guard let copy: Self = self.allowsSpellcheck(value) else { return self }
        return copy
    }

    /// Specifies one or more class names for an element.
    ///
    /// - Parameters:
    ///   - key: The name to be used as the element's class name.
    func `class`(_ name: String) -> TextArea {
        guard let copy: Self = self.class(name) else { return self }
        return copy
    }

    /// Specifies whether the content of an element is editable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func contentEditable(_ value: Bool) -> TextArea {
        guard let copy: Self = self.contentEditable(value) else { return self }
        return copy
    }

    /// Sets an attribute value for a given key.
    ///
    /// - Parameters:
    ///   - key: The key to use as the attribute key.
    ///   - value: The value to use as the attribute value.
    func customAttribute(key: String, value: String) -> TextArea {
        guard let copy: Self = self.customAttribute(key: key, value: value) else { return self }
        return copy
    }

    /// Specifies whether an element is draggable.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func draggable(_ value: Bool) -> TextArea {
        guard let copy: Self = self.draggable(value) else { return self }
        return copy
    }

    /// Specifies whether an element is hidden.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``contenteditable``
    ///   attribute should be added.
    func hidden(_ value: Bool) -> TextArea {
        guard let copy: Self = self.hidden(value) else { return self }
        return copy
    }

    /// Sets a unique id for an element.
    ///
    /// - Parameters:
    ///   - id: The id to be used as the element's id.
    func id(_ id: String) -> TextArea {
        guard let copy: Self = self.id(id) else { return self }
        return copy
    }

    /// Specifies the language of the element's content
    ///
    /// - Parameters:
    ///   - code: The code to use as the language code.
    ///   - country: The code to use as the country code.
    func language(_ code: LanguageCode, country: CountryCode? = nil) -> TextArea {
        guard let copy: Self = self.language(code, country: country) else { return self }
        return copy
    }

    /// Adds margin to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add margin.
    ///   - length: The amount and units of margin.
    func margin(_ edges: MarginSet, length: Unit? = nil) -> TextArea {
        guard let copy: Self = self.setMargins(edges, length: length) else { return self }
        return copy
    }

    /// Adds padding to the element based on desired edges.
    ///
    /// - Parameters:
    ///   - edges: The edges in which to add padding.
    ///   - length: The amount and units of padding.
    func padding(_ edges: PaddingSet, length: Unit? = nil) -> TextArea {
        guard let copy: Self = self.setPadding(edges, length: length) else { return self }
        return copy
    }

    /// Adds one or more styles to the element.
    ///
    /// - Parameters:
    ///   - styles: The styles to be used as the element's styles.
    func styles(_ styles: CSSProperty...) -> TextArea {
        guard let copy: Self = self.setStyles(styles: styles) else { return self }
        return copy
    }

    /// Specifies the tabbing order of an element.
    ///
    /// - Parameters:
    ///   - styles: The index to be used as the element's tab index.
    func tabIndex(_ index: Int) -> TextArea {
        guard let copy: Self = self.tabIndex(index) else { return self }
        return copy
    }

    /// Specifies extra information about an element.
    ///
    /// - Parameters:
    ///   - styles: The title to be used as the element's title.
    func title(_ title: String) -> TextArea {
        guard let copy: Self = self.title(title) else { return self }
        return copy
    }

    /// Specifies whether an element is translated.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``translate``
    ///   attribute should be added.
    func translated(_ value: Bool) -> TextArea {
        guard let copy: Self = self.translated(value) else { return self }
        return copy
    }
}

extension TextArea: HTMLConvertible {
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
