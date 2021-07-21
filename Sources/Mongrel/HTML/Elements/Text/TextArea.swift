/// The ``TextArea`` element defines a multi-line text input control.
///
/// This element can hold an unlimited number of characters, and the
/// text renders in a fixed-width font.
///
/// For more information about the ``<textarea>`` tag,
/// visit https://www.w3schools.com/tags/tag_textarea.asp
public struct TextArea: Attributable, EventListener {
    public var tag: String = "textarea"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    /// Creates a text area element.
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
