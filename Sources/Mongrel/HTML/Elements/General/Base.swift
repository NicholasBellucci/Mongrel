//
//  Base.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Base: Attributable, EventListener {
    public var tag: String = "base"
    public var attributes: [String: String] = [:]
    public var styles: [String: String] = [:]

    public init(href: String, target: Target = .`self`) {
        attributes["href"] = href
        attributes["target"] = target.rawValue
    }
}

extension Base: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}
