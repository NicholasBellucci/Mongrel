//
//  HorizonalRule.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct HorizonalRule: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

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
        if attributesString == "" {
            return "<hr>"
        } else {
            return "<hr \(attributesString)>"
        }
    }
}
