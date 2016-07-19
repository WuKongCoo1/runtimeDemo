//
//  UIButton+block.h
//  runtimeDemo
//
//  Created by 吴珂 on 16/7/19.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TouchBlock)(void);

@interface UIButton (block)

- (void)addTouchHandler:(TouchBlock)handler;

@end
