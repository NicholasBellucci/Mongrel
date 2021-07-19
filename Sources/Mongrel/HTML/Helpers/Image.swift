//
//  Image.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public struct Image: HTMLElement {
    public var attributes: [String: String] = [:]

    public init(src: String, alt: String? = nil) {
        attributes["src"] = src

        if let alt = alt {
            attributes["alt"] = alt
        }
    }
}

extension Image: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<img \(attributesString)>"
    }

    private var attributesString: String {
        attributes
            .map { attribute in "\(attribute.key)=\"\(attribute.value)\"" }
            .joined(separator: " ")
    }
}
