import Foundation

/// An ``Input`` element allows a user to enter data.
///
/// This element has several different types.
///
/// For more information about the ``<input>`` tag,
/// visit https://www.w3schools.com/tags/tag_input.asp
public struct Input: Attributable {
    public var tag: String = "input"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates the input of a desired type.
    ///
    /// Default type is ``.text``.
    ///
    /// - Parameters:
    ///   - type: The input's type.
    public init(type: InputType = .text) {
        attributes["type"] = type.rawValue
    }
}

/// These extensions are modifiers for an ``Input`` element
/// and will return an ``Input`` element for continued use/updates.
public extension Input {
    /// Specifies a filter for what file types the user can pick from
    /// the file input dialog box. Only available for input type ``file``.
    ///
    /// - Parameters:
    ///   - type: The type to be used as the accept type.
    func accept(_ type: AcceptType) -> Input {
        var copy = self
        copy.attributes["accept"] = type.rawValue
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will allow autocomplete.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func allowsAutocomplete(_ value: Bool) -> Input {
        var copy = self
        copy.attributes["autocomplete"] = value ? "on" : "off"
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will allow multiple values.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``multiple``
    ///   attribute should be added.
    func allowsMultipleValues(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    /// Specifies an alternate text for images.
    /// Only available for input type ``image``.
    ///
    /// - Parameters:
    ///   - alt: The alternate text for images.
    func alt(_ alt: String) -> Input {
        var copy = self
        copy.attributes["alt"] = alt
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be focused automatically on page load.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``autofocus``
    ///   attribute should be added.
    func autofocused(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["autocomplete"] = ""
        }

        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be pre-selected on page load.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``checked``
    ///   attribute should be added.
    func checked(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["checked"] = ""
        }

        return copy
    }

    /// Refers to a ``List(.data)`` element that contains pre-defined options
    /// for an ``Input`` element
    ///
    /// - Parameters:
    ///   - id: The id of the datalist.
    func datalistId(_ id: String) -> Input {
        var copy = self
        copy.attributes["list"] = id
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will be disabled.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``disabled``
    ///   attribute should be added.
    func disabled(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Specifies which form the input belongs.
    ///
    /// - Parameters:
    ///   - id: The id of the form.
    func formId(_ id: String) -> Input {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Specifies the URL of the file that will process the input
    /// control when the form is submitted. Only available for input
    /// type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - url: The URL to use as the file URL.
    func formAction(_ url: String) -> Input {
        var copy = self
        copy.attributes["formaction"] = url
        return copy
    }

    /// Specifies how form-data should be encoded before sending it to a server.
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - type: The encoding of the form-data when submitting it to the server.
    func formEncodeType(_ type: FormEncodeType) -> Input {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    /// Sets the HTTP method for sending data to the action URL.
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - method: The method to use as the form method.
    func formMethod(_ method: FormMethod) -> Input {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    /// Specifies that the form-data should not be validated on submission.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``formnovalidate``
    ///   attribute should be added.
    func formNoValidate(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = "formnovalidate"
        }

        return copy
    }

    /// Specifies where to display the response after submitting the form.
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - target: The target to use as the input form target.
    func formTarget(_ target: Target) -> Input {
        var copy = self
        copy.attributes["formtarget"] = target.rawValue
        return copy
    }

    /// Positions this element in a frame with a specified size.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    ///   - height: The height of the element, in pixels.
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Input {
        var copy = self

        if let width = width {
            copy.attributes["width"] = "\(width)"
        }

        if let height = height {
            copy.attributes["height"] = "\(height)"
        }

        return copy
    }

    /// Sets the maximum value for the input element.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the input's max value.
    func max(_ value: Int) -> Input {
        var copy = self
        copy.attributes["max"] = "\(value)"
        return copy
    }

    /// Sets the maximum number of characters allowed in the input element.
    ///
    /// - Parameters:
    ///   - length: The length to be used as the input's max length.
    func maxLength(_ length: Int) -> Input {
        var copy = self
        copy.attributes["maxlength"] = "\(length)"
        return copy
    }

    /// Sets the minimum value for the input element.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the input's min value.
    func min(_ value: Int) -> Input {
        var copy = self
        copy.attributes["min"] = "\(value)"
        return copy
    }

    /// Sets the minimum number of characters allowed in the input element.
    ///
    /// - Parameters:
    ///   - length: The length to be used as the input's min length.
    func minLength(_ length: Int) -> Input {
        var copy = self
        copy.attributes["minlength"] = "\(length)"
        return copy
    }

    /// Sets the name for the input.
    ///
    /// - Parameters:
    ///   - name: The name to use as the input name.
    func name(_ name: String) -> Input {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Specifies a regular expression that the input element's value is checked against.
    ///
    /// - Parameters:
    ///   - regex: The regular expression to be used as the input's pattern.
    func pattern(_ regex: String) -> Input {
        var copy = self
        copy.attributes["pattern"] = regex
        return copy
    }

    /// Specifies a short hint that describes the expected value of the input element.
    ///
    /// - Parameters:
    ///   - text: The text to be used as the input's placeholder.
    func placeholder(_ text: String) -> Input {
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
    func readonly(_ value: Bool) -> Input {
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
    func required(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    /// Sets the width, in characters, of the input element.
    ///
    /// - Parameters:
    ///   - size: The size to be used as the input's size.
    func size(_ size: Int) -> Input {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }

    /// Specifies the URL of the image to use as a submit button.
    /// Only available for input type ``image``.
    ///
    /// - Parameters:
    ///   - src: The source URL to be used as the input's source.
    func src(_ src: String) -> Input {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }

    /// Specifies the interval between legal numbers in an input field.
    ///
    /// - Parameters:
    ///   - step: The amount to be used as the input's step amount.
    func step(_ amount: Int) -> Input {
        var copy = self
        copy.attributes["step"] = "\(amount)"
        return copy
    }

    /// Adds a condition that controls whether the element
    /// will submit text direction.
    ///
    /// - Parameters:
    ///   - value: A Boolean value that determines whether the ``dirname``
    ///   attribute should be added.
    func submitTextDirection(_ value: Bool) -> Input {
        var copy = self

        if let name = copy.attributes["name"] {
            copy.attributes["dirname"] = "\(name).dir"
        }

        return copy
    }

    /// Sets the value of the input.
    ///
    /// - Parameters:
    ///   - value: The value to be used as the input's value.
    func value(_ value: String) -> Input {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }
}

extension Input: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
