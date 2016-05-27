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
        [_innerButton addTarget:self action:@selector(buttonTouchedDown) forControlEvents:UIControlEventTouchDown];
        [_innerButton addTarget:self action:@selector(buttonTouchedUp) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside | UIControlEventTouchCancel];
        [self addSubview:_innerButton];
        
        self.repeatDelay = 1;
        self.repeatInterval = 0.2;
    }
    return self;
}

- (void)dealloc
{
    [self cancelNextAction];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _innerButton.frame = self.bounds;
}

#pragma mark - Button events

- (void)buttonTouchedDown
{
    _currentRepeatCount = 0;
    [self triggerAction];
    [self performSelector:@selector(triggerActionAndBeginRepeat) withObject:nil afterDelay:self.repeatDelay];
}

- (void)buttonTouchedUp
{
    if (self.repeatEndedAction)
    {
        self.repeatEndedAction();
    }
    [self cancelNextAction];
}

#pragma mark - Action methods

- (void)cancelNextAction
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(triggerActionAndBeginRepeat) object:nil];
}

- (void)triggerAction
{
    _currentRepeatCount ++;
    if (self.action)
    {
        self.action();
    }
}

- (void)triggerActionAndBeginRepeat
{
    [self triggerAction];
    [self performSelector:@selector(triggerActionAndBeginRepeat) withObject:nil afterDelay:self.repeatInterval];
}

#pragma mark - UIButton methods

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
