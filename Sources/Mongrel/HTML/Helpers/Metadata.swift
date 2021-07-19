//
//  Metadata.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Metadata: HTMLElement {
    public var attributes: [String: String] = [:]

    public init(content: String) {
        attributes["content"] = content
    }
}

extension Metadata: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<meta \(attributesString)>"
    }
}
