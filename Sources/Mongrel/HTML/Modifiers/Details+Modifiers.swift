//
//  Details+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Details {
    func open(if value: Bool = true) -> Details {
        var copy = self

        if value {
            copy.attributes["open"] = ""
        }

        return copy
    }
}
