CustomToolBarButton
===================

Style your app with custom toolbar buttons. Using this sample project and Helper class you'll be able to create custom buttons. 

You can see a bigger difference with a button "highlight" that feels more like a physical button.

Use Helper.h to style a button after you set an IBOutlet from your UI to your code. It'll preserver any IBAction that you've set.

![Stretchable Toolbar Buttons](https://raw.github.com/PaulSolt/CustomToolBarButton/master/ButtonClicks.gif)

Code
----
    UIImage *buttonNormal = [[UIImage imageNamed:@"StretchButton.png"] 
        resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) 
        resizingMode:UIImageResizingModeStretch];
    [Helper customizeBarButton:self.leftButton image:buttonNormal highlightedImage:buttonHighlighted];

*Use an inset that matches your image. I use 60x60 images for the toolbar button image (retina). A standard non-retina button is 30x30, and 15 is half of 30 for the insets.
