function onKeyEvent(key as string, press as boolean) as boolean
    if (not press)
        return false
    end if

    rowItemFocused = m.top.content.getChild(0).getChild(m.top.rowItemFocused[1]) 

    if (key = "up")
        rowItemFocused.focusedButton = "up"
    end if

    if (key = "down")
        rowItemFocused.focusedButton = "down"
    end if

    if (key = "OK")
        if (rowItemFocused.focusedButton = "up")
            ? "play channel"
        else if (rowItemFocused.focusedButton = "down")
            if (rowItemFocused.state = "Follow")
                rowItemFocused.state = "Unfollow"
            else
                rowItemFocused.state = "Follow"
            end if
        end if
    end if

    return false
end function
