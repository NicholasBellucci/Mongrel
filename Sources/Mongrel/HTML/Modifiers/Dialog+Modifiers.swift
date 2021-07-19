//
//  Dialog+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Dialog {
    func open(if value: Bool = true) -> Dialog {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}
