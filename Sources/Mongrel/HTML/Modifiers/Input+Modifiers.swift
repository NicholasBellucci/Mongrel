//
//  Input+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Input {
    func accept(_ type: AcceptType) -> Input {
        var copy = self
        copy.attributes["accept"] = type.rawValue
        return copy
    }

    func alt(_ alt: String) -> Input {
        var copy = self
        copy.attributes["alt"] = alt
        return copy
    }

    func autocomplete(_ value: Bool) -> Input {
        var copy = self
        copy.attributes["autocomplete"] = value ? "on" : "off"
        return copy
    }

    func autofocus(_ value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["autocomplete"] = ""
        }

        return copy
    }

    func checked(_ value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["checked"] = ""
        }

        return copy
    }

    func dirName(_ name: String) -> Input {
        var copy = self
        copy.attributes["dirname"] = name
        return copy
    }

    func disabled(_ value: Bool = true) -> Input {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> Input {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func formAction(_ url: String) -> Input {
        var copy = self
        copy.attributes["formaction"] = url
        return copy
    }

    func formEncodeType(_ type: FormEncodeType) -> Input {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    func formMethod(_ method: FormMethod) -> Input {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    func formNoValidate(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = ""
        }

        return copy
    }

    func formTarget(_ target: Target) -> Input {
        var copy = self
        copy.attributes["formtarget"] = target.rawValue
        return copy
    }

    func height(_ height: Double) -> Input {
        var copy = self
        copy.attributes["height"] = "\(height)"
        return copy
    }

    func listId(_ id: String) -> Input {
        var copy = self
        copy.attributes["list"] = id
        return copy
    }

    func max(_ value: Int) -> Input {
        var copy = self
        copy.attributes["max"] = "\(value)"
        return copy
    }

    func maxLength(_ length: Int) -> Input {
        var copy = self
        copy.attributes["maxlength"] = "\(length)"
        return copy
    }

    func min(_ value: Int) -> Input {
        var copy = self
        copy.attributes["min"] = "\(value)"
        return copy
    }

    func minLength(_ length: Int) -> Input {
        var copy = self
        copy.attributes["minlength"] = "\(length)"
        return copy
    }

    func multiple(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["multiple"] = ""
        }

        return copy
    }

    func name(_ name: String) -> Input {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func pattern(_ regex: String) -> Input {
        var copy = self
        copy.attributes["pattern"] = regex
        return copy
    }

    func placeholder(_ placeholder: String) -> Input {
        var copy = self
        copy.attributes["placeholder"] = placeholder
        return copy
    }

    func readonly(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["readonly"] = ""
        }

        return copy
    }

    func required(_ value: Bool) -> Input {
        var copy = self

        if value {
            copy.attributes["required"] = ""
        }

        return copy
    }

    func size(_ size: Int) -> Input {
        var copy = self
        copy.attributes["size"] = "\(size)"
        return copy
    }

    func src(_ src: String) -> Input {
        var copy = self
        copy.attributes["src"] = src
        return copy
    }

    func step(_ step: Int) -> Input {
        var copy = self
        copy.attributes["step"] = "\(step)"
        return copy
    }

    func value(_ value: String) -> Input {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }

    func width(_ width: Double) -> Input {
        var copy = self
        copy.attributes["width"] = "\(width)"
        return copy
    }
}
