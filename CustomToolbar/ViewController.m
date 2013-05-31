//
//  ViewController.m
//  CustomToolbar
//
//  Created by Paul Solt on 5/30/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"
#import "Helper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // Customize uiButtons

    // 1. Load the UIImage and then create a resizable image with it.
    // 2. Pretend you have the non-retina button image (30x30) and calculate insets with those dimensions
    //     15 is half of 30, so that the middle pixel row/colum will be used when stretching vertically
    //     or horizontally
    
    UIImage *buttonNormal = [[UIImage imageNamed:@"StretchButton.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];

    // Uncommment and test the image with the crosshair to show stretch
//    buttonNormal = [[UIImage imageNamed:@"StretchButtonTester.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];

    UIImage *buttonHighlighted = [[UIImage imageNamed:@"StretchButton-Highlighted.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];
    
    [Helper customizeBarButton:self.leftButton image:buttonNormal highlightedImage:buttonHighlighted];
    
    // Uncomment to stylize both buttons
//    [Helper customizeBarButton:self.rightButton image:buttonNormal highlightedImage:buttonHighlighted];
    
    
    // Customize the toolbar for portrait (lanscape needs a stretchable image, or another asset)
    // Toolbars are 44x44 points (88x640 pixels in portrait), you could use a 88x88 pixel image
    
    UIImage *toolbarImage = [[UIImage imageNamed:@"toolbar.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(22, 22, 22, 22) resizingMode:UIImageResizingModeStretch];
    [self.toolbar setBackgroundImage:toolbarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];

    // Uncomment and set a custom landscape toolbar graphic
    //    [self.toolbar setBackgroundImage:toolbarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsLandscapePhone];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
