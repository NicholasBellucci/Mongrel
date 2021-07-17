//
//  Collection+Utils.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }

    func element(after index: Int) -> Iterator.Element? {
        return self[safe: index + 1]
    }

    func element(before index: Int) -> Iterator.Element? {
        return self[safe: index - 1]
    }

    func flatten() -> [Element] {
        return Array.flatten(0, to: self)
    }
}

private extension Array {
    static func flatten<Element>(_ index: Int, to array: [Element]) -> [Element] {
        guard index < array.count else { return [] }

        var flatten: [Element] = []

        if let itemArr = array[index] as? [Element] {
            flatten = flatten + itemArr.flatten()
        } else {
            flatten.append(array[index])
        }

        return flatten + Array.flatten(index + 1, to: array)
    }
}
