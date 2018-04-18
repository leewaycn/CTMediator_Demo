//
//  CTMediator+D.m
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import "CTMediator+D.h"
#import "DViewController.h"
@implementation CTMediator (D)


//如果多个block的话？？？？
- (UIViewController *)D_viewControllerWithContentText:(void (^)(NSString *))contentText{

    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callBack"] = contentText;

    return [self performTarget:@"D" action:@"viewController" params:params shouldCacheTarget:NO];


}



- (UIViewController *)D_viewControllerWithBlock1:(void (^)(NSString *b1restr))block1 Block2:(void (^)(NSString *b2restr))block2{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"block1"] = block1;
    params[@"block2"] = block2;

    return [self performTarget:@"D" action:@"viewController" params:params shouldCacheTarget:NO];

}

@end
