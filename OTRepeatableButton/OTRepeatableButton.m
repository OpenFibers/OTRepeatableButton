//
//  OTRepeatableButton.m
//  OTRepeatableButtonDemo
//
//  Created by openthread on 5/27/16.
//  Copyright © 2016 openthread. All rights reserved.
//

#import "OTRepeatableButton.h"

@implementation OTRepeatableButton
{
    UIButton *_innerButton;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _innerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_innerButton];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _innerButton.frame = self.bounds;
}

- (void)setImage:(nullable UIImage *)image forState:(UIControlState)state
{
    [_innerButton setImage:image forState:state];
}

- (void)setBackgroundImage:(nullable UIImage *)image forState:(UIControlState)state
{
    [_innerButton setBackgroundImage:image forState:state];
}

- (UIEdgeInsets)imageEdgeInsets
{
    return _innerButton.imageEdgeInsets;
}

- (void)setImageEdgeInsets:(UIEdgeInsets)imageEdgeInsets
{
    _innerButton.imageEdgeInsets = imageEdgeInsets;
}

- (void)setTitle:(nullable NSString *)title forState:(UIControlState)state
{
    [_innerButton setTitle:title forState:state];
}

- (void)setTitleColor:(nullable UIColor *)color forState:(UIControlState)state
{
    [_innerButton setTitleColor:color forState:state];
}

- (void)setAttributedTitle:(nullable NSAttributedString *)title forState:(UIControlState)state
{
    [_innerButton setAttributedTitle:title forState:state];
}

- (UILabel *)titleLabel
{
    return _innerButton.titleLabel;
}

@end
