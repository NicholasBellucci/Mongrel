//
//  Fieldset+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public extension Fieldset {
    func disabled(if value: Bool = true) -> Fieldset {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func formId(_ id: String) -> Fieldset {
        var copy = self
        copy.attributes["form"] = id
        return copy
    }

    func name(_ name: String) -> Fieldset {
        var copy = self
        copy.attributes["name"] = name
        return copy
    }
}
