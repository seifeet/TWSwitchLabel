//
//  TWSwitch.h
//  talk-me
//
//  Created by AT on 4/2/14.
//  Copyright (c) 2014 AT. All rights reserved.
//

#import "TWSwitch.h"
#import <QuartzCore/QuartzCore.h>

@interface TWSwitch ()

@property (nonatomic, retain) UILabel *uiLabel;

@end;

@implementation TWSwitch

-(id)init
{
    self = [super init];
    if (self) {

        _uiSwitch = [[UISwitch alloc] initWithFrame:CGRectZero];
        [self addSubview:_uiSwitch];

        self.frame = CGRectZero;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        _uiSwitch = [[UISwitch alloc] initWithFrame:CGRectZero];
        [self addSubview:_uiSwitch];

        self.frame = frame;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font
{
    self = [self initWithFrame:frame];
    if (self) {

        if (text && text.length) {
            _uiLabel = [[UILabel alloc] initWithFrame:CGRectZero];

            _uiLabel.font = font;
            _uiLabel.text = text;

            [self addSubview:_uiLabel];
        }

        self.frame = frame;
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    CGRect switchFrame = _uiSwitch.frame;
    CGRect labelFrame = frame;
    CGRect viewFrame = frame;

    if (_uiLabel) {

        [_uiLabel sizeToFit];

        labelFrame.origin.x = switchFrame.size.width + 10.0f;
        labelFrame.origin.y = 0.0f;
        labelFrame.size.width = _uiLabel.frame.size.width + 5.0f;
        labelFrame.size.height = switchFrame.size.height;

        _uiLabel.frame = labelFrame;

        viewFrame.size.width = labelFrame.origin.x + labelFrame.size.width;
        viewFrame.size.height = switchFrame.size.height;
    } else {

        viewFrame.size.width = switchFrame.size.width;
        viewFrame.size.height = switchFrame.size.height;
    }

    [super setFrame:viewFrame];
}

@end
