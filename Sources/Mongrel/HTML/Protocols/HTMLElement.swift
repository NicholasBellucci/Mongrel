//
//  HTMLElement.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public protocol HTMLElement: HTML {
    var attributes: [String: String] { get set }
}

extension HTMLElement {
    var attributesString: String {
        attributes
            .map { attribute in
                if attribute.value == "" {
                    return "\(attribute.key)"
                } else {
                    return "\(attribute.key)=\"\(attribute.value)\""
                }
            }
            .joined(separator: " ")
    }
}
