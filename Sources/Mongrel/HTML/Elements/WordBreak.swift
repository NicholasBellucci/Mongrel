//
//  File.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct WordBreak: Element, Attributable {
    public var attributes: [String: String] = [:]

    public init() { }
}

extension WordBreak: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributesString == "" {
            return "<wbr>"
        } else {
            return "<wbr \(attributesString)>"
        }
    }
}
