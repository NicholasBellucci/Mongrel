public enum EventAttribute: String {
    case abort, blur, change, click, copy, cut
    case drag, drop, emptied, ended, error, focus
    case input, invalid, load, offline, line
    case paste, pause, play, playing, progress
    case reset,  resize, scroll, search, seeked
    case seeking, select, stalled, storage, submit
    case suspend, toggle, unload, waiting, wheel

    case afterPrint = "afterprint"
    case beforePrint = "beforeprint"
    case beforeUnload = "beforeunload"
    case canPlay = "canplay"
    case canPlayThrough = "canplaythrough"
    case contextMenu = "ctextmenu"
    case cueChange = "cuechange"
    case doubleClick = "dblclick"
    case dragEnd = "dragend"
    case dragEnter = "dragenter"
    case dragLeave = "dragleave"
    case dragOver = "dragover"
    case dragStart = "dragstart"
    case durationChange = "durationchange"
    case hashChange = "hashchange"
    case keyDown = "keydown"
    case keyPress = "keypress"
    case keyUp = "keyup"
    case loadedData = "loadeddata"
    case loadedMetadata = "loadedmetadata"
    case loadStart = "loadstart"
    case mouseDown = "mousedown"
    case mouseMove = "mousemove"
    case mouseOut = "mouseout"
    case mouseOver = "mouseover"
    case mouseUp = "mouseup"
    case mouseWheel = "mousewheel"
    case pageHide = "pagehide"
    case pageShow = "pageshow"
    case popState = "popstate"
    case rateChange = "ratechange"
    case timeUpdate = "timeupdate"
    case volumeChange = "volumechange"
}
