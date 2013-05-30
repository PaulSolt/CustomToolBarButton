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
    
    UIImage *buttonNormal = [[UIImage imageNamed:@"StretchButton.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];

    // Test image with the crosshair to show stretch
//    UIImage *buttonNormal = [[UIImage imageNamed:@"StretchButtonTester.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];

    
//    UIImage *buttonHighlighted = [UIImage imageNamed:@"StretchButton-Highlighted.png"];
    UIImage *buttonHighlighted = [[UIImage imageNamed:@"StretchButton-Highlighted.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];
    
    [Helper customizeBarButton:self.leftButton image:buttonNormal highlightedImage:buttonHighlighted];
//    [Helper customizeBarButton:self.rightButton image:buttonNormal highlightedImage:buttonHighlighted];
    
    
    // Customize the toolbar for portrait (lanscape needs a stretchable image, or another asset
    
//    UIImage *toolbarImage = [UIImage imageNamed:@"toolbar.png"];
    UIImage *toolbarImage = [[UIImage imageNamed:@"toolbar.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15) resizingMode:UIImageResizingModeStretch];
    [self.toolbar setBackgroundImage:toolbarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
//    [self.toolbar setBackgroundImage:toolbarImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsLandscapePhone];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
