//
//  OTRepeatableButton.h
//  OTRepeatableButtonDemo
//
//  Created by openthread on 5/27/16.
//  Copyright © 2016 openthread. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OTRepeatableButton : UIView

- (nonnull instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic, copy, nullable) void (^action)(void);
@property (nonatomic, assign) NSTimeInterval repeatDelay;
@property (nonatomic, assign) NSTimeInterval repeatInterval;
@property (nonatomic, readonly) NSUInteger currentRepeatCount;

- (void)setImage:(nullable UIImage *)image forState:(UIControlState)state;
- (void)setBackgroundImage:(nullable UIImage *)image forState:(UIControlState)state;
@property (nonatomic, assign) UIEdgeInsets imageEdgeInsets;

- (void)setTitle:(nullable NSString *)title forState:(UIControlState)state;
- (void)setTitleColor:(nullable UIColor *)color forState:(UIControlState)state;
- (void)setAttributedTitle:(nullable NSAttributedString *)title forState:(UIControlState)state;
@property (nonatomic, readonly, nonnull) UILabel *titleLabel;


@end
