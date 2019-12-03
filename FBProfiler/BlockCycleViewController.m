//
//  BlockCycleViewController.m
//  FBProfiler
//
//  Created by 郑锐 on 2019/12/3.
//  Copyright © 2019 郑锐. All rights reserved.
//

#import "BlockCycleViewController.h"

@interface BlockCycleViewController ()
{
    void (^_handlerBlock)(void);
}
@end

@implementation BlockCycleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self blockRetainCycle];
    // Do any additional setup after loading the view.
}

- (void)blockRetainCycle {
    _handlerBlock = ^{
        NSLog(@"%@", self);
    };
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
