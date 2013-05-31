CustomToolBarButton
===================

Style your app with custom toolbar buttons. Using this sample project and Helper class you'll be able to create custom buttons. 

You can see a bigger difference with a button "highlight" that feels more like a physical button.

Use Helper.h to style a button after you set an IBOutlet from your UI to your code. It'll copy your IBAction that you've set in Xcode's interface builder.

![Stretchable Toolbar Buttons](https://raw.github.com/PaulSolt/CustomToolBarButton/master/ButtonClicks.gif)

Code
----
    UIImage *normalButtonImage = [[UIImage imageNamed:@"StretchButton.png"] 
        resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) 
        resizingMode:UIImageResizingModeStretch];
    UIImage *highlightedButtonImage = [[UIImage imageNamed:@"StretchButton-Highlighted.png"] 
        resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) 
        resizingMode:UIImageResizingModeStretch];
    [Helper customizeBarButton:myButton image:normalButtonImage highlightedImage:highlightedButtonImage];

* Use an inset that matches your image. I use 60x60 images for the toolbar button image (retina). A standard non-retina button is 30x30, and 15 is half of 30 for the insets.
* Don't load the retina image, instead load the non-retina and iPhone will autoscale down for you. i.e. [UIImage imageNamed:@"StretchButton.png"]
* The imageNamed function will automatically downsample a retina image "StretchButton@2x.png" if you only add the retina image to your Xcode project.
