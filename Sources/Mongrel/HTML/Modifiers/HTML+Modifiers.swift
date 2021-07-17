//
//  HTML+Modifiers.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

public extension Node {
    func attribute(_ attribute: Attribute, value: String) -> Node {
        var copy = self
        copy.attributes.append((name: attribute.rawValue, value: value))
        return copy
    }
}
