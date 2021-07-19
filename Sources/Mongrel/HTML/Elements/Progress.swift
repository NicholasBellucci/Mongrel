//
//  Progress.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Progress: Element, Attributable {
    public var attributes: [String: String] = [:]

    var innerHTML: String = ""

    public init(max: Double = 1) {
        attributes["max"] = "\(max)"
    }

    public init(max: Double = 1, @HTMLBuilder _ content: () -> HTML) {
        attributes["max"] = "\(max)"
        innerHTML = content().render()
    }
}

extension Progress: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<progress \(attributesString)>\(innerHTML)</progress>"
    }
}
