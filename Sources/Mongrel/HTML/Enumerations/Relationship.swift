//
//  Relationship.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public enum Relationship {
    public enum Anchor: String {
        case alternate, author, bookmark, external, help
        case license, next, nofollow, noopener, noreferrer
        case prev, search, tag
    }

    public enum Area: String {
        case alternate, author, bookmark, help, license
        case next, nofollow, noreferrer, prefetch
        case prev, search, tag
    }

    public enum Form: String {
        case external, help, license, next, nofollow
        case noopener, noreferrer, opener, prev, search
    }

    public enum Link: String {
        case alternate, author, help, icon, license
        case next, pingback, preconnect, prefetch, preload
        case prerender, prev, search, stylesheet

        case dnsPrefetch = "dns-prefetch"
    }
}
