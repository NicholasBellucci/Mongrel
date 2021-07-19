//
//  Column.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Column: HTMLElement {
    public var attributes: [String: String] = [:]

    public init(span: Int? = nil) {
        if let span = span {
            attributes["span"] = "\(span)"
        }
    }
}

extension Column: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<col \(attributesString)>"
    }

    private var attributesString: String {
        attributes
            .map { attribute in "\(attribute.key)=\"\(attribute.value)\"" }
            .joined(separator: " ")
    }
}
