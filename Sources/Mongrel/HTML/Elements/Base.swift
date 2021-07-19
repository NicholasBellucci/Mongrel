//
//  Base.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Base: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    public init(href: String, target: Target = .`self`) {
        attributes["href"] = href
        attributes["target"] = target.rawValue
    }
}

extension Base: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<base \(attributesString)>"
    }
}
