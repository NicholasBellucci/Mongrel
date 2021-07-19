//
//  Break.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Break: HTMLElement {
    public var attributes: [String: String] = [:]

    public init() { }
}

extension Break: HTML {
    public var description: String {
        "<br>"
    }

    public var debugDescription: String {
        "<br>"
    }
}

