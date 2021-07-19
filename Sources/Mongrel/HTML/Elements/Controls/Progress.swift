//
//  Progress.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Progress: Attributable, EventListener {
    public var tag: String = "progress"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

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
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}

public extension Progress {
    func value(_ value: Double) -> Progress {
        var copy = self
        copy.attributes["value"] = "\(value)"
        return copy
    }
}
