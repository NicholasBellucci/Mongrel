//
//  HorizonalRule.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct HorizonalRule: HTMLElement {
    public var attributes: [String: String] = [:]

    public init() { }
}

extension HorizonalRule: HTML {
    public var description: String {
        "<hr>"
    }

    public var debugDescription: String {
        "<hr>"
    }
}
