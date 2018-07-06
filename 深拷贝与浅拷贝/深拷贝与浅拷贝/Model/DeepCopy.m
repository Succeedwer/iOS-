//
//  DeepCopy.m
//  深拷贝与浅拷贝
//
//  Created by HFW on 2018/7/6.
//  Copyright © 2018年 HFW. All rights reserved.
//

#import "DeepCopy.h"

@implementation DeepCopy
- (id)copyWithZone:(NSZone *)zone{
    
    DeepCopy *obj = [DeepCopy allocWithZone:zone];
    obj.a = [NSString stringWithString:self.a];
    obj.b = [NSMutableArray arrayWithArray:self.b];
    return obj;
}
@end
