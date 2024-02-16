sub init()
    label = m.top.findNode("welcome")
    label.text = "Hello from create-roku-app"

    rowList = m.top.findNode("rowList")

    content = CreateObject("roSGNode", "ContentNode")
    row = content.CreateChild("ContentNode")

    for i = 1 to 4
        element = row.CreateChild("ContentNode")
        element.AddField("focusedButton", "string", false)
        element.AddField("state", "string", false)
        element.focusedButton = "none"
        element.state = "Follow"
    end for

    rowList.content = content
    rowList.setFocus(true)
end sub
