//
//  VStack.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public struct VStack: Attributable, EventListener {
    public var tag: String = "div"
    public var attributes: [String: String] = [:]
    public var styles: [InlineStyle] = []

    var innerHTML: String
    
    public init(@HTMLBuilder _ content: ()-> HTML) {
        innerHTML = content().stringValue
    }
}

extension VStack: HTML {
    public var description: String {
        html
    }

    public var debugDescription: String {
        html
    }

    private var html: String {
        "<\(tag)\(attributesString)>\(innerHTML)</\(tag)>"
    }
}

//public extension VStack {
//    func justify(_ justification: Justification) -> VStack {
//
//    }
//}

public enum FlexWrap: String {
    case nowrap
    case wrap
    case reverse = "wrap-reverse"
}

public enum Alignment: String {
    case flexStart = "flex-start"
    case flexEnd = "flex-end"
    case center
    case baseline
    case stretch
}

public enum Justification: String {
    case flexStart = "flex-start"
    case flexEnd = "flex-end"
    case center
    case spaceBetween = "space-between"
    case spaceAround = "space-around"
    case spaceEvenly = "space-evenly"
}
