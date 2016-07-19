//
//  UIButton+block.m
//  runtimeDemo
//
//  Created by 吴珂 on 16/7/19.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "UIButton+block.h"
#import <objc/runtime.h>

static void * TouchBlockKey = &TouchBlockKey;

@implementation UIButton (block)

- (void)addTouchHandler:(TouchBlock)handler
{
    objc_setAssociatedObject(self, TouchBlockKey, handler, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self addTarget:self action:@selector(touchUpInSide:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)touchUpInSide:(UIButton *)btn{
    TouchBlock block = objc_getAssociatedObject(self, TouchBlockKey);
    if (block) {
        block();
    }
}

@end
