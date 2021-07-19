//
//  TextArea+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public extension TextArea {
    func autofocus(if value: Bool = true) -> TextArea {
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

    func disabled(if value: Bool = true) -> TextArea {
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

    func name(_ name: String) -> TextArea {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func placeholder(_ placeholder: String) -> TextArea {
        var copy = self
        copy.attributes["placeholder"] = placeholder
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
