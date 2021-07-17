//
//  Node+HTML.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

extension Node {
    var html: String {
        if attributes.isEmpty {
            return isEmpty ?
                "<\(name) />":
                "<\(name)>\(innerHTML)</\(name)>"
        } else {
            return isEmpty ?
                "<\(name) \(attributesString)>" :
                "<\(name) \(attributesString)>\(innerHTML)</\(name)>"
        }
    }

    var attributesString: String {
        attributes
            .map { attribute in "\(attribute.name)=\"\(attribute.value)\"" }
            .joined(separator: " ")
    }
}
