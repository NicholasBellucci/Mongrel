/// An ``Button`` element defines a clickable button.
///
/// This element can contain text and other elements.
///
/// For more information about the ``<button>`` tag,
/// visit https://www.w3schools.com/tags/tag_button.asp
public struct Button: Attributable, EventListener {
    public var tag: String = "button"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String = ""

    /// Creates a button with a title and an ``onclick`` action.
    ///
    /// - Parameters:
    ///   - title: The title text for the button.
    ///   - action: The action script represented as a string.
    public init<S>(_ title: S, action: MongrelJS) where S : StringProtocol {
        attributes["type"] = ButtonType.button.rawValue
        attributes["onclick"] = action.script
        innerHTML = String(describing: title)
    }

    /// Creates a button with an optional ``onclick`` action.
    ///
    /// - Parameters:
    ///   - action: The action script represented as a string.
    ///   - content: An ``HTMLBuilder`` that creates the elements
    ///   that make up this element.
    public init(action: () -> MongrelJS, @HTMLBuilder content: () -> HTMLConvertible) {
        attributes["type"] = ButtonType.button.rawValue
        attributes["onclick"] = action().script
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
