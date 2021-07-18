@resultBuilder
public struct AttributeBuilder {
    public typealias Expression = Attribute

    public typealias Component = [Attribute]

    public static func buildBlock(_ components: Component...) -> Component {
        components
            .flatMap {
                $0
            }
    }

    public static func buildExpression(_ expression: Expression) -> Component {
        [expression]
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
