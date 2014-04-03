//
//  TWSwitch.h
//  talk-me
//
//  Created by AT on 4/2/14.
//  Copyright (c) 2014 AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWSwitch : UIView

@property (nonatomic, retain) UISwitch *uiSwitch;

- (id)initWithFrame:(CGRect)frame
               text:(NSString *)text
               font:(UIFont *)font; // This class enforces a size appropriate for the control. The frame size is ignored.

@end
