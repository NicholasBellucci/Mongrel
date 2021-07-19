//
//  Metadata+Modifiers.swift
//
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public extension Metadata {
    func charset(_ charset: String) -> Metadata {
        var copy = self
        copy.attributes["charset"] = charset
        return copy
    }

    func httpEquiv(_ equiv: HTTPEquiv) -> Metadata {
        var copy = self
        copy.attributes["http-equiv"] = equiv.rawValue
        return copy
    }

    func name(_ name: MetadataName) -> Metadata {
        var copy = self
        copy.attributes["name"] = name.rawValue
        return copy
    }
}
