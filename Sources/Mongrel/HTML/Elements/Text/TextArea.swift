//
//  TextArea.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct TextArea: Attributable, EventListener {
    public var tag: String = "textarea"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    public init(@HTMLBuilder _ content: () -> HTMLConvertible) {
        innerHTML = content().stringValue
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

public extension TextArea {
    func autofocus(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    func dirName(_ name: String) -> TextArea {
        var copy = self
        copy.attributes["dirname"] = name
        return copy
    }

    func disabled(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> TextArea {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func maxLength(_ length: Int) -> TextArea {
        var copy = self
        copy.attributes["maxlength"] = "\(length)"
        return copy
    }

    /// Sets the button's attribute: ``name``.
    ///
    /// - Parameters:
    ///   - name: The name of the textarea.
    func name(_ name: String) -> TextArea {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func placeholder(_ text: String) -> TextArea {
        var copy = self
        copy.attributes["placeholder"] = text
        return copy
    }

    func readonly(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["readonly"] = ""
        }

        return copy
    }

    func required(_ value: Bool) -> TextArea {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    func rows(_ rows: Int) -> TextArea {
        var copy = self
        copy.attributes["rows"] = "\(rows)"
        return copy
    }

    func wrap(_ wrap: TextWrap) -> TextArea {
        var copy = self
        copy.attributes["wrap"] = wrap.rawValue
        return copy
    }
}
