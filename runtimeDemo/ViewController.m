//
//  ViewController.m
//  runtimeDemo
//
//  Created by 吴珂 on 16/7/19.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+block.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_testButton addTouchHandler:^{
        NSLog(@"点击");
    }];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:self action:@selector(touchButton:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)touchButton:(id)sender
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
