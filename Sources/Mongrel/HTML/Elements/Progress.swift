//
//  Progress.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Progress: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String = ""

    public init(max: Double = 1) {
        attributes["max"] = "\(max)"
    }

    public init(max: Double = 1, @HTMLBuilder _ content: () -> HTML) {
        attributes["max"] = "\(max)"
        innerHTML = content().stringValue
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

public extension Progress {
    func value(_ value: Double) -> Progress {
        var copy = self
        copy.attributes["value"] = "\(value)"
        return copy
    }
}

