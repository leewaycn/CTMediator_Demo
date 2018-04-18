//
//  DViewController.h
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DViewController : UIViewController

//可以回调的。。。如果是多个回调，那不是要写在一长串里？
/*

 - (instancetype)initWithContentText:(void (^)(NSString *))blockName
 B2:(void (^)(NSString *))blockName2
 B3:(void (^)(NSString *))blockName3
 B4:(void (^)(NSString *))blockName4
 B5:(void (^)(NSString *))blockName5
 B6:(void (^)(NSString *))blockName6;

 */
- (instancetype)initWithContentText:(void (^)(NSString *))blockName;


- (instancetype)initWithBlock1:(void (^)(NSString *))block1 Block2:(void (^)(NSString *))block2;


//- (void)someMethodThatTakesABlock:(void (^)(NSString *))blockName;


//如果又有正向又有反向数据传值呢。。麻烦。。

//- (instancetype)initWithContentText:(nsstr*)str blok :(void (^)(NSString *))blockName;


@end
