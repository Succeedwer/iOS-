//
//  ShallowCopy.m
//  深拷贝与浅拷贝
//
//  Created by HFW on 2018/7/6.
//  Copyright © 2018年 HFW. All rights reserved.
//

#import "ShallowCopy.h"

@implementation ShallowCopy

- (id)copyWithZone:(NSZone *)zone{
    
    ShallowCopy *obj = [ShallowCopy allocWithZone:zone];
    obj.a = self.a;
    obj.b = self.b;
    return obj;
}

@end
