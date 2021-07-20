//
//  Script.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Script: Attributable, EventListener {
    public var tag: String = "script"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    private var innerHTML: String

    public init(source: String) {
        attributes["src"] = source
        innerHTML = ""
    }

    public init(_ content: () -> String) {
        innerHTML = content()
    }
}

extension Script: HTMLConvertible {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}

public extension Script {
    func async(if value: Bool = true) -> Script {
        var copy = self

        if value {
            copy.attributes["async"] = ""
        }

        return copy
    }

    func crossorigin(_ type: CrossOriginType) -> Script {
        var copy = self
        copy.attributes["type"] = type.rawValue
        return copy
    }

    func `defer`(if value: Bool = true) -> Script {
        var copy = self

        if value {
            copy.attributes["`defer`"] = ""
        }

        return copy
    }

    func integrity(_ integrity: String) -> Script {
        var copy = self
        copy.attributes["integrity"] = integrity
        return copy
    }

    func noModule(_ value: Bool) -> Script {
        var copy = self
        copy.attributes["nomodule"] = "\(value)"
        return copy
    }

    func referrerPolicy(_ policy: ReferrerPolicy) -> Script {
        var copy = self
        copy.attributes["referrerpolicy"] = policy.rawValue
        return copy
    }

    func type(_ type: String) -> Script {
        var copy = self
        copy.attributes["type"] = type
        return copy
    }
}


