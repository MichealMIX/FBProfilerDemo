//
//  TimerCycleViewController.m
//  FBProfiler
//
//  Created by 郑锐 on 2019/12/3.
//  Copyright © 2019 郑锐. All rights reserved.
//

#import "TimerCycleViewController.h"

@interface TimerCycleViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TimerCycleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self timerRetainCycle];
    // Do any additional setup after loading the view.
}

- (void)timerRetainCycle {
    _timer = [NSTimer scheduledTimerWithTimeInterval:1
                                              target:self
                                            selector:@selector(handleTimer)
                                            userInfo:nil
                                             repeats:YES];
}

- (void)handleTimer{
    NSLog(@"timer");
}

- (void)dealloc{
    [_timer invalidate];
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
