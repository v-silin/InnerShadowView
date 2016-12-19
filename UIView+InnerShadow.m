//
//  UIView+InnerShadow.m
//
//  Created by Pavel Krasnobrovkin on 27.04.15.
//  Copyright (c) 2015 Pavel Krasnobrovkin. All rights reserved.
//

#import "UIView+InnerShadow.h"
#import <UIKit/UIKit.h>

static inline void addShadow(UIView* toView, CGPoint start, CGPoint end, CGRect frame, UIColor* shadowColor)
{
    CAGradientLayer* shadow = [CAGradientLayer layer];
    [shadow setStartPoint:start];
    [shadow setEndPoint:end];
    [shadow setFrame:frame];
    
    shadow.colors = @[(id)shadowColor.CGColor, (id)[UIColor clearColor].CGColor];
    
    [toView.layer insertSublayer:shadow atIndex:0];
}

@implementation UIView (InnerShadow)

- (void)addInsetShadowsWithRadius:(float)radius
                     atDirections:(ShadowDirections)directions
{
    UIView* shadowView = [self viewWithTag:kShadowViewTag];
    
    // Cleanup from previous calls
    if (shadowView != nil)
    {
       [shadowView removeFromSuperview];
    }
    
    CGRect frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    shadowView = [[UIView alloc] initWithFrame:frame];
    shadowView.tag = kShadowViewTag;
    shadowView.backgroundColor = [UIColor clearColor];
    [self addSubview:shadowView];
    
    UIColor* shadowColor = [UIColor colorWithWhite:0.0f alpha:0.2f];
    
    // Draw top shadow, if needed
    if (SHADOW_TOP & directions)
    {
        addShadow( shadowView
                 , CGPointMake(0.5, 0.0)
                 , CGPointMake(0.5, 1.0)
                 , CGRectMake(0, 0, self.bounds.size.width, radius)
                 , shadowColor);
    }
    
    // Draw right shadow, if needed
    if (SHADOW_RIGHT & directions)
    {
        addShadow( shadowView
                 , CGPointMake(1.0, 0.5)
                 , CGPointMake(0.0, 0.5)
                 , CGRectMake(self.bounds.size.width - radius, 0, radius, self.bounds.size.height)
                 , shadowColor);
    }
    
    // Draw bottom shadow, if needed
    if (SHADOW_BOTTOM & directions)
    {
        addShadow( shadowView
                 , CGPointMake(0.5, 1.0)
                 , CGPointMake(0.5, 0.0)
                 , CGRectMake(0, self.bounds.size.height - radius, self.bounds.size.width, radius)
                 , shadowColor);
    }
    
    // Draw left shadow, if needed
    if (SHADOW_LEFT & directions)
    {
        addShadow( shadowView
                 , CGPointMake(0.0, 0.5)
                 , CGPointMake(1.0, 0.5)
                 , CGRectMake(0, 0, radius, self.bounds.size.height)
                 , shadowColor);
    }
    
    if (SHADOW_TOP_LEFT & directions)
    {
        addShadow( shadowView
                  , CGPointMake(0.0, 0.0)
                  , CGPointMake(0.6, 0.5)
                  , CGRectMake(0, 0, self.bounds.size.width, radius)
                  , shadowColor);
    }
    
    if (SHADOW_TOP_RIGHT & directions)
    {
        addShadow( shadowView
                  , CGPointMake(1.0, 0.0)
                  , CGPointMake(0.4, 0.5)
                  , CGRectMake(0, 0, self.bounds.size.width, radius)
                  , shadowColor);
    }
}

@end