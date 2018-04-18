//
//  CViewController.m
//  MainProject
//
//  Created by 孔友夫 on 2018/4/18.
//  Copyright © 2018年 casa. All rights reserved.
//

#import "CViewController.h"

#import "CTMediator+D.h"



@interface CViewController ()

@property (nonatomic,strong)UIImageView *imageV;

@end

@implementation CViewController
- (instancetype)initWithContentText:(UIImage *)contentText{
    self = [super init];
    if (self) {


        self.imageV.image = contentText;

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.imageV];
    self.imageV.frame = self.view.bounds;
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{


    int a = 1;
    if (a==1) {

        UIViewController *viewController = [[CTMediator sharedInstance] D_viewControllerWithBlock1:^(NSString *b1restr) {

            NSLog(@"%@",b1restr);
        } Block2:^(NSString *b2restr) {

            NSLog(@"%@",b2restr);
        }];

        [self.navigationController pushViewController:viewController animated:YES];



    }else{




        UIViewController *viewController = [[CTMediator sharedInstance] D_viewControllerWithContentText:^(NSString *str) {
            NSLog(@"fslflsdjfljsdljflsdj");

            NSLog(@"\n%@",str);

        } ];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}





#pragma mark - getters and setters
- (UIImageView *)imageV
{
    if (_imageV == nil) {
        _imageV = [[UIImageView alloc] init];
//        _imageV.textColor = [UIColor blueColor];
    }
    return _imageV;
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
