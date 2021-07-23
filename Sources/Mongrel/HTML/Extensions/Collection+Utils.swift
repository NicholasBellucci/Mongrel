extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

extension Array {
    func element(after index: Int) -> Iterator.Element? {
        return self[safe: index + 1]
    }

    func element(before index: Int) -> Iterator.Element? {
        return self[safe: index - 1]
    }

    func unique<T: Hashable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        var set = Set<T>()

        return self.reduce(into: [Element]()) { result, value in
            guard !set.contains(value[keyPath: keyPath]) else {
                return
            }

            set.insert(value[keyPath: keyPath])
            result.append(value)
        }
    }
}
