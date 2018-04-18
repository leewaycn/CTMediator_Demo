//
//  CTMediator+C.m
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import "CTMediator+C.h"

@implementation CTMediator (C)
- (UIViewController *)C_viewControllerWithContentText:(UIImage *)contentText{

    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"contentText"] = contentText;
    return [self performTarget:@"C" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
