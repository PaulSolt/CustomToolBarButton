//
//  Helper.h
//  CustomToolbar
//
//  Created by Paul Solt on 5/28/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Helper : NSObject

// Creates custom graphics for the bar button on a UIToolBar
+ (void)customizeBarButton:(UIBarButtonItem *)barButtonItem image:(UIImage *)image highlightedImage:(UIImage *)highlightedImage;


@end
