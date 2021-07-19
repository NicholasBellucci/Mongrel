//
//  HorizonalRule.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct HorizonalRule: Attributable, EventListener {
    public var tag: String = "hr"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    public init() { }
}

extension HorizonalRule: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>"
    }
}