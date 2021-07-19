//
//  Progress+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public extension Progress {
    func value(_ value: Double) -> Progress {
        var copy = self
        copy.attributes["value"] = "\(value)"
        return copy
    }
}
