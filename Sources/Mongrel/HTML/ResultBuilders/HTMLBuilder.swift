@resultBuilder
public struct HTMLBuilder {
    public typealias Expression = HTMLConvertible

    public typealias Component = [HTMLConvertible]

    public static func buildExpression(_ expression: Expression) -> Component {
        [expression]
    }

    public static func buildBlock(_ components: Component...) -> Component {
        components
            .flatMap {
                $0
            }
    }

    public static func buildOptional(_ component: Component?) -> Component {
        component ?? []
    }

    public static func buildEither(first component: Component) -> Component {
        component
    }

    public static func buildEither(second component: Component) -> Component {
        component
    }

    public static func buildArray(_ components: [Component]) -> Component {
        components
            .flatMap {
                $0
            }
    }
}
