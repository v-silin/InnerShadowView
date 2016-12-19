//
//  UIView+InnerShadow.h
//
//  Created by Pavel Krasnobrovkin on 27.04.15.
//  Copyright (c) 2015 Pavel Krasnobrovkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//TODO: change the value below to something else if some of your views is using this tag
#define kShadowViewTag 2132

typedef NS_OPTIONS(NSInteger, ShadowDirections)
{
    SHADOW_TOP = (1 << 0),
    SHADOW_RIGHT = (1 << 1),
    SHADOW_BOTTOM = (1 << 2),
    SHADOW_LEFT = (1 << 3),
    SHADOW_TOP_LEFT = (1 << 4),
    SHADOW_TOP_RIGHT = (1 << 5),
    SHADOW_TOP_CORNERS = SHADOW_TOP_LEFT | SHADOW_TOP_RIGHT,
    SHADOW_ALL = SHADOW_TOP | SHADOW_RIGHT | SHADOW_BOTTOM | SHADOW_LEFT
};

@interface UIView (InnerShadow)

- (void)addInsetShadowsWithRadius:(float)radius
                     atDirections:(ShadowDirections)directions;

@end