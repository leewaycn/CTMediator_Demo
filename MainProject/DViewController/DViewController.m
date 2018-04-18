//
//  DViewController.m
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import "DViewController.h"

@interface DViewController ()


@property (nonatomic,copy)void (^Blcok)(NSString *strlflsdfkj);


@property (nonatomic,copy)void (^blcok1)(NSString *strlflsdfkj);
@property (nonatomic,copy)void (^blcok2)(NSString *strlflsdfkj);

@end

@implementation DViewController


- (instancetype)initWithContentText:(void (^)(NSString *))blockName{
    self = [super init];
    if (self) {

        self.Blcok = blockName;
    }
    return self;
}

- (instancetype)initWithBlock1:(void (^)(NSString *))block1 Block2:(void (^)(NSString *))block2{

    self  = [super init];
    if (self) {

        self.blcok1 = block1;
        self.blcok2 = block2;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.Blcok) {
        self.Blcok(@"fsdflsdjfljsdlfjldsjfljsdlfjoweiru");
    }

    if (self.blcok1) {
        self.blcok1(@"fsdlfjsdlfjldsjlfj");
    }

    if (self.blcok2) {
        self.blcok2(@"flsdflsdljflsj");
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
