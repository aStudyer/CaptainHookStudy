//
//  test.h
//  demo_reDylib
//
//  Created by aStudyer on 2019/9/20.
//  Copyright © 2019 aStudyer. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, copy) NSString *name;

- (void)eat:(NSString *)food;

@end


@interface HHViewController : UIViewController

- (void)clickMe:(UIBarButtonItem *)sender;

- (void)setBgColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
