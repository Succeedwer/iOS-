//
//  PseudoCopy.m
//  深拷贝与浅拷贝
//
//  Created by HFW on 2018/7/6.
//  Copyright © 2018年 HFW. All rights reserved.
//

#import "PseudoCopy.h"

@implementation PseudoCopy

-(id)copyWithZone:(NSZone *)zone{

    return self;
}

- (void)dealloc{
    NSLog(@"PseudoCopy 被销毁了");
}

@end
