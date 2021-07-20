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
    public init<S>(_ title: S, action: String) where S : StringProtocol {
        attributes["type"] = ButtonType.button.rawValue
        attributes["onclick"] = action
        innerHTML = String(describing: title)
    }

    /// Creates a button with an optional ``onclick`` action.
    ///
    /// - Parameters:
    ///   - action: The action script represented as a string.
    ///   - content: The ``HTMLConvertible`` elements that will make up
    ///   the HTML inside of the `<button></button>` tags.
    public init(action: String? = nil, @HTMLBuilder _ content: () -> HTMLConvertible) {
        attributes["type"] = ButtonType.button.rawValue
        innerHTML = content().stringValue
    }
}

/// These extensions are modifiers for an ``Button`` element
/// and will return an ``Button`` element for continued use/updates.
public extension Button {
    /// Sets the button's attribute: `autofocus`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``autofocus`` should be added
    ///   based on another boolean.
    func autofocus(if value: Bool = true) -> Button {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    /// Sets the button's attribute: `disabled`.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``disabled`` should be added
    ///   based on another boolean.
    func disabled(if value: Bool = true) -> Button {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Sets the button's attribute: `form`.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the button belongs.
    func formId(_ id: String) -> Button {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the button's attribute: `formaction`.
    ///
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - url: The URL to send the form data when submitted.
    func formAction(_ url: String) -> Button {
        var copy = self
        copy.attributes["formaction"] = url
        return copy
    }

    /// Sets the button's attribute: `formenctype`.
    ///
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - type: The encoding type for the form data.
    func formEncodeType(_ type: FormEncodeType) -> Button {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    /// Sets the button's attribute: `formmethod`.
    ///
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - method: The method in which to send the form data.
    func formMethod(_ method: FormMethod) -> Button {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    /// Sets the button's attribute: `formnovalidate`.
    ///
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``formnovalidate`` should be added
    ///   based on another boolean.
    func formNoValidate(if value: Bool = true) -> Button {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = "formnovalidate"
        }

        return copy
    }

    /// Sets the button's attribute: `formtarget`.
    ///
    /// Only available for button type ``submit``.
    ///
    /// - Parameters:
    ///   - target: The target to display the response after submitting.
    func formTarget(_ target: Target) -> Button {
        var copy = self
        copy.attributes["formtarget"] = target.rawValue
        return copy
    }

    /// Sets the button's attribute: `name`.
    ///
    /// - Parameters:
    ///   - name: The name of the button.
    func name(_ name: String) -> Button {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Sets the button's attribute: `type`.
    ///
    /// - Parameters:
    ///   - type: The type of the button.
    func type(_ type: ButtonType) -> Button {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    /// Sets the button's attribute: `value`.
    ///
    /// - Parameters:
    ///   - value: The initial value of the button.
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
