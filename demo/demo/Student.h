//
//  Student.h
//  demo
//
//  Created by aStudyer on 2019/9/19.
//  Copyright © 2019 aStudyer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, copy) NSString *name;

- (void)eat:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
