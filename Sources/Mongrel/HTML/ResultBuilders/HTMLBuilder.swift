//
//  HTMLBuilder.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

@resultBuilder
public struct HTMLBuilder {
    public static func buildExpression(_ expression: HTMLRepresentable) -> HTMLRepresentable {
        expression
    }

    public static func buildBlock(_ components: HTMLRepresentable...) -> HTMLRepresentable {
        if let components = components as? [[HTMLRepresentable]] {
            return components
                .reduce([], +)
        }

        return components
    }

    public static func buildOptional(_ component: HTMLRepresentable?) -> HTMLRepresentable {
        component ?? ""
    }

    public static func buildEither(first component: HTMLRepresentable) -> HTMLRepresentable {
        component
    }

    public static func buildEither(second component: HTMLRepresentable) -> HTMLRepresentable {
        component
    }

    static func buildArray(_ components: HTMLRepresentable) -> HTMLRepresentable {
        if let components = components as? [[HTMLRepresentable]] {
            return components
                .reduce([], +)
        }

        return components
    }
}

