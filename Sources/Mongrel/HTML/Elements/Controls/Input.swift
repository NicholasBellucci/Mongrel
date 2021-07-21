/// An ``Input`` element allows a user to enter data.
///
/// This element has several different types.
///
/// For more information about the ``<input>`` tag,
/// visit https://www.w3schools.com/tags/tag_input.asp
public struct Input: Attributable, EventListener {
    public var tag: String = "input"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    /// Creates an input of a desired type.
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
    /// Sets the input's attribute: ``accept``.
    ///
    /// Only available for input type ``file``.
    ///
    /// - Parameters:
    ///   - type: The filter type for files the user can pick.
    func accept(_ type: AcceptType) -> Input {
        var copy = self
        copy.attributes["accept"] = type.rawValue
        return copy
    }

    /// Sets the input's attribute: ``multiple``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``multiple`` should be added
    ///   based on another boolean.
    func allowsMultipleValues(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    /// Sets the input's attribute: ``alt``.
    ///
    /// Only available for input type ``image``.
    ///
    /// - Parameters:
    ///   - alt: The alternate text for images.
    func alt(_ alt: String) -> Input {
        var copy = self
        copy.attributes["alt"] = alt
        return copy
    }

    /// Sets the input's attribute: ``autocomplete``.
    ///
    /// - Parameters:
    ///   - value: Specifies if the input should have autocomplete.
    func autocomplete(_ value: Bool) -> Input {
        var copy = self
        copy.attributes["autocomplete"] = value ? "on" : "off"
        return copy
    }

    /// Sets the input's attribute: ``autofocus``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``autofocus`` should be added
    ///   based on another boolean.
    func autofocus(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["autocomplete"] = ""
        }

        return copy
    }

    /// Sets the input's attribute: ``checked``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``checked`` should be added
    ///   based on another boolean.
    func checked(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["checked"] = ""
        }

        return copy
    }

    /// Sets the input's attribute: ``dirname``.
    ///
    /// - Parameters:
    ///   - value: The text direction that will be submitted.
    func dirName(_ name: String) -> Input {
        var copy = self
        copy.attributes["dirname"] = name
        return copy
    }

    /// Sets the input's attribute: ``disabled``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``disabled`` should be added
    ///   based on another boolean.
    func disabled(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    /// Sets the input's attribute: ``form``.
    ///
    /// - Parameters:
    ///   - id: The id of the form in which the input belongs.
    func formId(_ id: String) -> Input {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    /// Sets the input's attribute: ``formaction``.
    ///
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - url: The URL of the file that will process the input control when the form is submitted.
    func formAction(_ url: String) -> Input {
        var copy = self
        copy.attributes["formaction"] = url
        return copy
    }

    /// Sets the input's attribute: ``formenctype``.
    ///
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - type: The encoding of the form-data when submitting it to the server.
    func formEncodeType(_ type: FormEncodeType) -> Input {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    /// Sets the input's attribute: ``formmethod``.
    ///
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - method: The HTTP method for sending data to the action URL
    func formMethod(_ method: FormMethod) -> Input {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    /// Sets the input's attribute: ``formnovalidate``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``formnovalidate`` should be added
    ///   based on another boolean.
    func formNoValidate(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = "formnovalidate"
        }

        return copy
    }

    /// Sets the input's attribute: ``formtarget``.
    ///
    /// Only available for input type ``submit`` and ``image``.
    ///
    /// - Parameters:
    ///   - target: The target to display the response that is received after submitting.
    func formTarget(_ target: Target) -> Input {
        var copy = self
        copy.attributes["formtarget"] = target.rawValue
        return copy
    }

    /// Sets the input's attribute: ``height``.
    ///
    /// - Parameters:
    ///   - height: The height of the element, in pixels.
    func height(_ height: Double) -> Input {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    /// Sets the input's attribute: ``list``.
    ///
    /// - Parameters:
    ///   - id: The id of a ``datalist`` element that contains pre-defined options for the input.
    func listId(_ id: String) -> Input {
        var copy = self
        copy.attributes["list"] = id
        return copy
    }

    /// Sets the input's attribute: ``max``.
    ///
    /// - Parameters:
    ///   - value: The maximum value for the input.
    func max(_ value: Int) -> Input {
        var copy = self
        copy.attributes["max"] = "\(value)"
        return copy
    }

    /// Sets the input's attribute: ``maxlength``.
    ///
    /// - Parameters:
    ///   - length: The maximum number of characters allowed in the input.
    func maxLength(_ length: Int) -> Input {
        var copy = self
        copy.attributes["maxlength"] = "\(length)"
        return copy
    }

    /// Sets the input's attribute: ``min``.
    ///
    /// - Parameters:
    ///   - value: The minimum value for the input.
    func min(_ value: Int) -> Input {
        var copy = self
        copy.attributes["min"] = "\(value)"
        return copy
    }

    /// Sets the input's attribute: ``minlength``.
    ///
    /// - Parameters:
    ///   - length: The minumum number of characters allowed in the input.
    func minLength(_ length: Int) -> Input {
        var copy = self
        copy.attributes["minlength"] = "\(length)"
        return copy
    }

    /// Sets the button's attribute: ``name``.
    ///
    /// - Parameters:
    ///   - name: The name of the input.
    func name(_ name: String) -> Input {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    /// Sets the input's attribute: ``pattern``.
    ///
    /// - Parameters:
    ///   - regex: A regular expression that the input's value is checked against.
    func pattern(_ regex: String) -> Input {
        var copy = self
        copy.attributes["pattern"] = regex
        return copy
    }

    /// Sets the input's attribute: ``placeholder``.
    ///
    /// - Parameters:
    ///   - text: A short hint that describes the expected value of the input.
    func placeholder(_ text: String) -> Input {
        var copy = self
        copy.attributes["placeholder"] = text
        return copy
    }

    /// Sets the input's attribute: ``readonly``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``readonly`` should be added
    ///   based on another boolean.
    func readonly(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["readonly"] = ""
        }

        return copy
    }

    /// Sets the input's attribute: ``required``.
    ///
    /// - Parameters:
    ///   - value: Allows user to determine if ``required`` should be added
    ///   based on another boolean.
    func required(if value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    /// Sets the input's attribute: ``size``.
    ///
    /// - Parameters:
    ///   - size: The width, in characters, of the input.
    func size(_ size: Int) -> Input {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }

    /// Sets the input's attribute: ``src``.
    ///
    /// Only available for input type ``src``.
    ///
    /// - Parameters:
    ///   - src: The URL of the image.
    func src(_ src: String) -> Input {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }

    /// Sets the input's attribute: ``step``.
    ///
    /// - Parameters:
    ///   - step: The interval between legal numbers in an input.
    func step(_ step: Int) -> Input {
        var copy = self
        copy.attributes["step"] = "\(step)"
        return copy
    }

    /// Sets the input's attribute: ``value``.
    ///
    /// - Parameters:
    ///   - value: The value of the input.
    func value(_ value: String) -> Input {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }

    /// Sets the input's attribute: ``width``.
    ///
    /// - Parameters:
    ///   - width: The width of the element, in pixels.
    func width(_ width: Double) -> Input {
        var copy = self
        copy.attributes["width"] = "\(width)"
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
