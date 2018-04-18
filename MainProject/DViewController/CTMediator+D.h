//
//  CTMediator+D.h
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import <CTMediator/CTMediator.h>

@interface CTMediator (D)

//如果多个block的话？？？？

- (UIViewController *)D_viewControllerWithContentText:(void (^)(NSString *))contentText;


- (UIViewController *)D_viewControllerWithBlock1:(void (^)(NSString *b1restr))block1 Block2:(void (^)(NSString *b2restr))block2;


@end
