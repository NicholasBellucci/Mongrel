//
//  OptionGroup+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension OptionGroup {
    func disabled(if value: Bool = true) -> OptionGroup {
        var copy = self

        if value {
            copy.attributes["disabled"] = ""
        }

        return copy
    }

    func text(_ text: String) -> OptionGroup {
        var copy = self
        copy.attributes["text"] = text
        return copy
    }
}
