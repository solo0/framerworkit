# Import file "Order Confirmation"
sketch = Framer.Importer.load("imported/Order Confirmation@1x", scale: 1)

{item, buyNowBar, Confirmation, backgroundImage, successBadge, message} = sketch

########### Adjust Defaults
# Item
item.scale = 0
item.opacity = 0
# Buy Now Bar

# Confirmation Screen
Confirmation.x = 0
Confirmation.opacity = 0
# Background Image
backgroundImage.scale = 1.5
backgroundImage.blur = 20
# Success Badge
successBadge.y = -900
successBadge.opacity = 0
# Message
message.scale = 0
message.opacity = 0
########### States
# Item
item.states.add
    scaleUp:
        scale: 1.00
        opacity: 1.00
 
item.states.next()
# Buy Now Bar
buyNowBar.states.add
    slideUp:
        y: 490
        opacity: 1.00
 
buyNowBar.states.animationOptions =
    curve: "spring(400, 30, 0)"
    delay: .3
 
buyNowBar.states.next()
# Confirmation Screen
Confirmation.states.add
    fadeIn:
        opacity: 1.00
# Background Image
backgroundImage.states.add
    zoomBlur:
        scale: 1.00
        blur: 0
 
# Success Badge
successBadge.states.add
    fadeDown:
        y: 0
        opacity: 1.00
 
successBadge.states.animationOptions =
    curve: "spring(400, 30, 20)"
    delay: .3
# Message
message.states.add
    scaleUp:
        scale: 1.00
        opacity: 1.00
########### Events
buyNowBar.onClick (event, layer) ->
    Confirmation.states.next()
    backgroundImage.states.next()
    successBadge.states.next()
    message.states.next()