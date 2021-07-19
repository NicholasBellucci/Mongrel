//
//  Form+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Form {
    func accept(_ type: AcceptType) -> Form {
        var copy = self
        copy.attributes["accept"] = type.rawValue
        return copy
    }

    func action(_ action: String) -> Form {
        var copy = self
        copy.attributes["action"] = action
        return copy
    }

    func autocomplete(_ value: Bool) -> Form {
        var copy = self
        copy.attributes["autocomplete"] = value ? "on" : "off"
        return copy
    }

    func encodeType(_ type: FormEncodeType) -> Form {
        var copy = self
        copy.attributes["formenctype"] = type.rawValue
        return copy
    }

    func method(_ method: FormMethod) -> Form {
        var copy = self
        copy.attributes["formmethod"] = method.rawValue
        return copy
    }

    func name(_ name: String) -> Form {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }

    func noValidate(_ value: Bool) -> Form {
        var copy = self

        if value {
            copy.attributes["formnovalidate"] = ""
        }

        return copy
    }

    func relationship(_ relationship: Relationship.Form) -> Form {
        var copy = self
        copy.attributes["rel"] = relationship.rawValue
        return copy
    }

    func target(_ target: Target = .`self`) -> Form {
        var copy = self
        copy.attributes["target"] = target.rawValue
        return copy
    }
}
