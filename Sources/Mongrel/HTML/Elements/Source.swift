//
//  Source.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Source: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init() { }
}

extension Source: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributesString == "" {
            return "<source>"
        } else {
            return "<source \(attributesString)>"
        }
    }
}