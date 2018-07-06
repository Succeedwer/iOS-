//
//  ViewController.m
//  深拷贝与浅拷贝
//
//  Created by HFW on 2018/7/6.
//  Copyright © 2018年 HFW. All rights reserved.
//

#import "ViewController.h"
#import "ShallowCopy.h"
#import "DeepCopy.h"
#import "PseudoCopy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
/*
    //系统非容器类
    //系统非容器不可变类
    NSString *str = @"123";//str: 0x1073d1068
    NSString *copyStr = [str copy];//copyStr: 0x1073d1068
    NSString *copyStrM = [str mutableCopy];
    NSLog(@"str: %p", str);                         //str: 0x1073d1068
    NSLog(@"copyStr: %p", copyStr);          //copyStr: 0x1073d1068
    NSLog(@"copyStrM: %p", copyStrM);    //copyStrM: 0x6040002555d0
    //结论：对应系统非容器不可变类，copy是浅拷贝，mutableCopy是深拷贝。
    
    //系统非容器可变类
    NSMutableString *strM = [NSMutableString stringWithString:@"123"];
    NSString *copyStr1 = [strM copy];
    NSString *copyStr1M = [strM mutableCopy];
    NSLog(@"strM: %p", str); //strM: 0x10f3c2068
    NSLog(@"copyStr1: %p", copyStr1); //copyStr1: 0xa000000003332313
    NSLog(@"copyStr1M: %p", copyStr1M); // copyStr1M: 0x60400045fb30
    //内存地址都不一样，则系统非容器可变类不管是copy还是mutableCopy都是深拷贝

    //系统容器类对象的拷贝
    //系统容器类不可变对象的拷贝
    NSArray *arr = @[@"1",@"2",@"3"];
    NSArray *copyArr = [arr copy];
    NSMutableArray *copyArrM = [arr mutableCopy];
    NSLog(@"arr: %p", arr); //arr: 0x6040004483a0
    NSLog(@"copyArr: %p", copyArr);//copyArr: 0x6040004483a0
    NSLog(@"copyArrM: %p", copyArrM);//copyArrM: 0x604000448550
 
    //系统容器类可变对象的拷贝
    NSMutableArray *arrM = [NSMutableArray arrayWithArray:@[@"1", @"2", @"3"]];
    NSArray *copyArr = [arrM copy];
    NSMutableArray *copyArrM = [arrM mutableCopy];
    NSLog(@"arrM: %p", arrM);//arrM: 0x600000440180
    NSLog(@"copyArr: %p", copyArr);//copyArr: 0x6000004426d0
    NSLog(@"copyArrM: %p", copyArrM);//copyArrM: 0x600000441a10
 
    ShallowCopy *obj = [[ShallowCopy alloc] init];
    obj.a = @"123";
    obj.b = 5;
    ShallowCopy *copyObj = [obj copy];
    NSLog(@"obj：%p", obj);//obj：0x600000424660
    NSLog(@"obj.a：%p", obj.a);//obj.a：0x10cd23078
    NSLog(@"obj.b：%p", obj.b); //obj.b：0x5
    NSLog(@"copyObj：%p", copyObj);//copyObj：0x6000004246c0
    NSLog(@"copyObj.a：%p", copyObj.a);//copyObj.a：0x10cd23078
    NSLog(@"copyObj.b：%p", copyObj.b);//copyObj.b：0x5

    DeepCopy *obj = [[DeepCopy alloc] init];
    obj.a = @"123";
    obj.b = [NSMutableArray arrayWithObjects:@"a",@"b",@"c", nil];
    DeepCopy *copyObj = [obj copy];
    NSLog(@"obj：%p", obj);//obj：0x604000235920
    NSLog(@"obj.a：%p", obj.a);//obj.a：0x103b51078
    NSLog(@"obj.b：%p", obj.b); //obj.b：0x604000443060
    NSLog(@"copyObj：%p", copyObj);//copyObj：0x6040002359a0
    NSLog(@"copyObj.a：%p", copyObj.a);//copyObj.a：0x103b51078
    NSLog(@"copyObj.b：%p", copyObj.b);//copyObj.b：0x6040004407e0
  */
    
    PseudoCopy *obj = [[PseudoCopy alloc] init];
    obj.a = @"123";
    obj.b = [NSMutableArray arrayWithObjects:@"a",@"b",@"c", nil];
    DeepCopy *copyObj = [obj copy];
    NSLog(@"%zd", CFGetRetainCount((__bridge CFTypeRef)obj));
    obj = nil;
    NSLog(@"obj：%p", obj);//obj：0x60400022c020
    NSLog(@"obj.a：%p", obj.a);//obj.a：0x10c727078
    NSLog(@"obj.b：%p", obj.b); //obj.b：0x604000657d60
    NSLog(@"copyObj：%p", copyObj);//copyObj：0x60400022c020
    NSLog(@"copyObj.a：%p", copyObj.a);//copyObj.a：0x10c727078
    NSLog(@"copyObj.b：%p", copyObj.b);//copyObj.b：0x604000657d60
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
