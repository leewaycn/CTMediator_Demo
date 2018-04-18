//
//  Target_C.m
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import "Target_C.h"
#import "CViewController.h"
@implementation Target_C

- (UIViewController *)Action_viewController:(NSDictionary *)params{

    UIImage *contentText = params[@"contentText"];
    CViewController *viewController = [[CViewController alloc] initWithContentText:contentText];
    return viewController;
}

@end
