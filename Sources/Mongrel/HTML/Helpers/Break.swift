//
//  Break.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Break: HTMLElement, Attributable {
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
        "<br \(attributesString)>"
    }
}

