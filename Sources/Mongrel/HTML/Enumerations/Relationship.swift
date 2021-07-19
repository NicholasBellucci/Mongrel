//
//  Relationship.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public enum Relationship {
    public enum Area: String {
        case alternate, author, bookmark, help, license
        case next, nofollow, noreferrer, prefetch
        case prev, search, tag
    }

    public enum Link: String {
        case alternate, author, help, icon, license
        case next, pingback, preconnect, prefetch, preload
        case prerender, prev, search, stylesheet

        case dnsPrefetch = "dns-prefetch"
    }
}
