//
//  SandboxType.swift
//  
//
//  Created by Nicholas Bellucci on 7/19/21.
//

public enum SandboxType: String {
    case allowForms = "allow-forms"
    case allowModals = "allow-modals"
    case allowOrientationLock = "allow-orientation-lock"
    case allowPointerLock = "allow-pointer-lock"
    case allowPopups = "allow-popups"
    case allowPopupsToEscapeSandbox = "allow-popups-to-escape-sandbox"
    case allowPresentation = "allow-presentation"
    case allowSameOrigin = "allow-same-origin"
    case allowScripts = "allow-scripts"
    case allowTopNavigation = "allow-top-navigation"
    case allowTopNavigationByUserActivation = "allow-top-navigation-by-user-activation"
}
