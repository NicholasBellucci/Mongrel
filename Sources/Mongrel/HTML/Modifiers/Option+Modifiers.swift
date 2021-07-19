//
//  Option+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Option {
    func disabled(if value: Bool = true) -> Option {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func label(_ label: String) -> Option {
        var copy = self
        copy.attributes["label"] = label
        return copy
    }

    func selected(if value: Bool = true) -> Option {
        var copy = self

        if value {
            copy.attributes["selected"] = ""
        }

        return copy
    }

    func value(_ value: String) -> Option {
        var copy = self
        copy.attributes["value"] = value
        return copy
    }
}
