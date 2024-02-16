sub setItemContent()
    if (m.top.itemContent.focusedButton = "none")
        m.top.findNode("up").text = "Image"
        m.top.findNode("down").text = "Name"
    end if

    if (not m.top.itemHasFocus)
        return
    end if

    if (m.top.itemContent.focusedButton = "up")
        m.top.findNode("up").text = "Image <"
        m.top.findNode("down").text = m.top.itemContent.state
    else if (m.top.itemContent.focusedButton = "down")
        m.top.findNode("up").text = "Image"
        m.top.findNode("down").text = m.top.itemContent.state + " <"
    end if
end sub

sub onFocusChange()
    if (m.top.itemHasFocus)
        m.top.itemContent.focusedButton = "up"
    else
        m.top.itemContent.focusedButton = "none"
    end if
end sub
