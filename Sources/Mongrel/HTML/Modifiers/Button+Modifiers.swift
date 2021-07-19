//
//  Button+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public extension Button {
    func autofocus(if value: Bool = true) -> Button {
        var copy = self

        if value {
            copy.attributes["autofocus"] = ""
        }

        return copy
    }

    func disabled(if value: Bool = true) -> Button {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> Button {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func formAction(_ url: String) -> Button {
        var copy = self
        copy.attributes["formaction"] = url
        return copy
    }

    func formEncodeType(_ type: FormEncodeType) -> Button {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    func formMethod(_ method: FormMethod) -> Button {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    func formNoValidate(_ value: Bool) -> Button {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = ""
        }

        return copy
    }

    func formTarget(_ target: Target) -> Button {
        var copy = self
        copy.attributes["formtarget"] = target.rawValue
        return copy
    }

    func name(_ name: String) -> Button {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func type(_ type: String) -> Button {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }

    func value(_ value: String) -> Button {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }
}
