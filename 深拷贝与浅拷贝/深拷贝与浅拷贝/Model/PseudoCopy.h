//
//  PseudoCopy.h
//  深拷贝与浅拷贝
//
//  Created by HFW on 2018/7/6.
//  Copyright © 2018年 HFW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PseudoCopy : NSObject<NSCopying>
@property (nonatomic, copy) NSString *a;
@property (nonatomic, strong) NSMutableArray *b;
@end
