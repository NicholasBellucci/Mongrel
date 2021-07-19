public protocol CaseAccessible { }

public extension CaseAccessible {
    /// Returns the label of the enum case
    var label: String {
        return Mirror(reflecting: self).children.first?.label ?? String(describing: self)
    }

    /// Extract an associated value of the enum case if it is of the expected type
    func associatedValue<AssociatedValue>() -> AssociatedValue? {
        return decompose(expecting: AssociatedValue.self)?.value
    }
}

private extension CaseAccessible {
    func decompose<AssociatedValue>(expecting: AssociatedValue.Type) -> (path: [String?], value: AssociatedValue)? {
        let mirror = Mirror(reflecting: self)
        assert(mirror.displayStyle == .enum, "These CaseAccessible default functions should be used exclusively for enums")
        guard mirror.displayStyle == .enum else { return nil }

        var path: [String?] = []
        var any: Any = self

        while case let (label?, anyChild)? = Mirror(reflecting: any).children.first {
            path.append(label)
            path.append(String(describing: type(of: anyChild)))
            if let child = anyChild as? AssociatedValue { return (path, child) }
            any = anyChild
        }
        if MemoryLayout<AssociatedValue>.size == 0 {
            return (["\(self)"], unsafeBitCast((), to: AssociatedValue.self))
        }
        return nil
    }
}
