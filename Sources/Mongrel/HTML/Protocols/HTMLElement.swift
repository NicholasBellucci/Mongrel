//
//  HTMLElement.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public protocol HTMLElement: HTML {
    var attributes: [String: String] { get set }
}
