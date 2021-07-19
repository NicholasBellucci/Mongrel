//
//  Form.swift
//  
//
//  Created by Nicholas Bellucci on 7/18/21.
//

public enum FormEncodeType: String {
    case formData = "multipart/form-data"
    case plain = "text/plain"
    case urlEncoded = "application/x-www-form-urlencoded"
}

public enum FormMethod: String {
    case get, post
}
