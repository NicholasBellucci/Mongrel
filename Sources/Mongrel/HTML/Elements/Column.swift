//
//  Column.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Column: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    public init(span: Int? = nil) {
        if let span = span {
            attributes["span"] = "\(span)"
        }
    }
}

extension Column: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        if attributesString == "" {
            return "<col>"
        } else {
            return "<col \(attributesString)>"
        }
    }
}
