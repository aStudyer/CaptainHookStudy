//
//  test.m
//  demo_reDylib
//
//  Created by aStudyer on 2019/9/20.
//  Copyright © 2019 aStudyer. All rights reserved.
//

#import "test.h"
#import <CaptainHook/CaptainHook.h>

CHDeclareClass(Student);
CHDeclareClass(HHViewController);

CHMethod(1, void, Student, eat, NSString *, food)
{
    NSLog(@"food = %@: %@", food, self);
}
CHConstructor {
    CHLoadLateClass(Student);
    CHClassHook1(Student, eat);
}

CHMethod1(void, HHViewController, clickMe, UIBarButtonItem *, sender){
    NSLog(@"还改变颜色吗？");
    CHSuper1(HHViewController, clickMe, sender);
}
CHMethod1(void, HHViewController, setBgColor, UIColor *, color){
    NSLog(@"界面永远是蓝色");
    CHSuper1(HHViewController, setBgColor, [UIColor blueColor]);
}
CHMethod2(void, HHViewController, touchesBegan, NSSet<UITouch *> *, touches, withEvent, UIEvent *, event){
    NSLog(@"点我干啥");
}
CHConstructor {
    CHLoadLateClass(HHViewController);
    CHClassHook2(HHViewController, touchesBegan, withEvent);
    CHClassHook1(HHViewController, clickMe);
    CHClassHook1(HHViewController, setBgColor);
}
