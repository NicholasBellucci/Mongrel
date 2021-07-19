//
//  Track+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Track {
    func label(_ label: String) -> Track {
        var copy = self
        copy.attributes["label"] = label
        return copy
    }

    func isDefault(_ value: Bool) -> Track {
        var copy = self

        if value {
            copy.attributes["default"] = nil
        }

        return copy
    }

    func srcLanguage(_ language: String) -> Track {
        var copy = self
        copy.attributes["srclang"] = language
        return copy
    }
}
