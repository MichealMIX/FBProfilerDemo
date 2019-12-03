//
//  ViewController.m
//  FBProfiler
//
//  Created by 郑锐 on 2019/12/2.
//  Copyright © 2019 郑锐. All rights reserved.
//

#import "ViewController.h"
#import "BlockCycleViewController.h"
#import "TimerCycleViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initUI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initUI{
    
    CGFloat navigationBarAndStatusBarHeight = self.navigationController.navigationBar.frame.size.height + [[UIApplication sharedApplication] statusBarFrame].size.height;
    
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, navigationBarAndStatusBarHeight, self.view.frame.size.width, self.view.frame.size.height-(navigationBarAndStatusBarHeight)) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSArray *titleArray = @[@"block循环引用",@"timer循环引用"];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.text = titleArray[indexPath.row];
    }
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        BlockCycleViewController *blockVC = [[BlockCycleViewController alloc] init];
        [self.navigationController pushViewController:blockVC animated:YES];
    }else{
        TimerCycleViewController *timerVc = [[TimerCycleViewController alloc] init];
        [self.navigationController pushViewController:timerVc animated:YES];
    }
}


@end
