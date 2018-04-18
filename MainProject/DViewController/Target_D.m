//
//  Target_D.m
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import "Target_D.h"

#import "DViewController.h"
@implementation Target_D


- (UIViewController *)Action_viewController:(NSDictionary *)params{

    id contentText = params[@"callBack"];
    //如果多个block的话？？？？

    if (contentText) {
        DViewController *viewController = [[DViewController alloc] initWithContentText:contentText];
        return viewController;

    }

    id block1 = params[@"block1"];
    id block2 = params[@"block2"];

    DViewController *viewController = [[DViewController alloc] initWithBlock1:block1 Block2:block2];
    return viewController;

}


@end
