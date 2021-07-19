//
//  Source.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Source: HTMLElement, Attributable {
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
        "<source \(attributesString)>"
    }
}
