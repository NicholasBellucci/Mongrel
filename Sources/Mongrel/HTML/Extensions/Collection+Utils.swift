//
//  Collection+Utils.swift
//  
//
//  Created by Nicholas Bellucci on 7/17/21.
//

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }

    func element(after index: Int) -> Iterator.Element? {
        guard let index = index + 1 as? Index else { return nil }
        return self[safe: index]
    }

    func element(before index: Int) -> Iterator.Element? {
        guard let index = index - 1 as? Index else { return nil }
        return self[safe: index]
    }
}
