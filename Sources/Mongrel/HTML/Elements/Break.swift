//
//  Break.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Break: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    public init() { }
}

extension Break: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributesString == "" {
            return "<br>"
        } else {
            return "<br \(attributesString)>"
        }
    }
}

