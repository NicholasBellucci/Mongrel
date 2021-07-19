//
//  Root.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct Root: Element, Attributable,  EventListener {
    public var attributes: [String: String] = [:]

    var innerHTML: String

    public init(language: LanguageCode, country: CountryCode? = nil, @HTMLBuilder _ content: () -> HTMLRepresentable) {
        if let country = country {
            attributes["lang"] = "\(language.rawValue)-\(country.rawValue)"
        } else {
            attributes["lang"] = "\(language.rawValue)"
        }

        innerHTML = content().render()
    }
}

extension Root: HTMLRepresentable {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<area \(attributesString)>"
    }
}
