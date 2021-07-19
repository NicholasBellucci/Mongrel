/// Text Modifiers
///
public extension Text {
    func abbreviated(title: String) -> Text {
        var copy = self
        copy.tags.append("abbr")
        copy.attributesCollection["abbr"] = ["title": title]
        return copy
    }

    func bold() -> Text {
        var copy = self
        copy.tags.append("b")
        return copy
    }

    func cited() -> Text {
        var copy = self
        copy.tags.append("cite")
        return copy
    }

    func direction(_ direction: Direction) -> Text {
        var copy = self
        copy.tags.append("bdo")
        copy.attributesCollection["bdo"] = ["dir": direction.rawValue]
        return copy
    }

    func emphasized() -> Text {
        var copy = self
        copy.tags.append("em")
        return copy
    }

    func heading(_ heading: Heading) -> Text {
        var copy = self
        copy.tags.append("\(heading.rawValue)")
        return copy
    }

    func important() -> Text {
        var copy = self
        copy.tags.append("strong")
        return copy
    }

    func inserted() -> Text {
        var copy = self
        copy.tags.append("ins")
        return copy
    }

    func italic() -> Text {
        var copy = self
        copy.tags.append("i")
        return copy
    }

    func marked() -> Text {
        var copy = self
        copy.tags.append("marked")
        return copy
    }

    func small() -> Text {
        var copy = self
        copy.tags.append("small")
        return copy
    }

    func strikethrough(_ active: Bool = true) -> Text {
        var copy = self

        if active {
            copy.tags.append("del")
        }

        return copy
    }

    func `subscript`() -> Text {
        var copy = self
        copy.tags.append("sub")
        return copy
    }

    func superscript() -> Text {
        var copy = self
        copy.tags.append("sup")
        return copy
    }

    func quoted() -> Text {
        var copy = self
        copy.tags.append("q")
        return copy
    }

    func underlined() -> Text {
        var copy = self
        copy.tags.append("u")
        return copy
    }
}
