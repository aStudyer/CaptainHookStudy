//
//  ViewController.m
//  demo
//
//  Created by aStudyer on 2019/9/19.
//  Copyright © 2019 aStudyer. All rights reserved.
//

#import "HHViewController.h"
#import "Student.h"

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    [self setBgColor:[UIColor orangeColor]];
}

- (IBAction)clickMe:(UIBarButtonItem *)sender {
    [self setBgColor:[UIColor colorWithRed:arc4random_uniform(266) / 255.f green:arc4random_uniform(266) / 255.f blue:arc4random_uniform(266) / 255.f alpha:1.0]];
}

- (void)setBgColor:(UIColor *)color {
    self.view.backgroundColor = color;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self test];
}

- (void)test{
    Student *stu = [Student new];
    stu.name = @"小明";
    [stu eat:@"苹果"];
}

@end
