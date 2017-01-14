//
//  JGBottomFirstController.m
//  JGNavSegmentScroll
//
//  Created by stkcctv on 17/1/14.
//  Copyright © 2017年 JG. All rights reserved.
//

#import "JGBottomFirstController.h"
#import "UIView+JGFrame.h"
#import "JGFirstOneTableView.h"
#include "JGFirstTwoTableView.h"

@interface JGBottomFirstController () <UIScrollViewDelegate>

@property (nonatomic, strong) UISegmentedControl *segmentCtrl;

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation JGBottomFirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self settingScrollView];
    [self settingSegment];
}

- (void)settingScrollView{
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height)];
    scrollView.delegate = self;
    scrollView.bounces = NO;
    scrollView.pagingEnabled = YES;
    scrollView.directionalLockEnabled = YES;
    scrollView.contentInset = UIEdgeInsetsMake(-64, 0, -49, 0);
    scrollView.contentSize = CGSizeMake(2 *self.view.width, self.view.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    
    [self.view addSubview:scrollView];
    
    JGFirstOneTableView *tableViewOne = [[JGFirstOneTableView alloc] initWithFrame:CGRectMake(self.view.width,64, self.view.width, self.view.height-64-49)];
    JGFirstTwoTableView *tableViewTwo = [[JGFirstTwoTableView alloc] initWithFrame:CGRectMake(0,64, self.view.width, self.view.height-64-49)];
    
    [scrollView addSubview:tableViewOne];
    [scrollView addSubview:tableViewTwo];
    
    _scrollView = scrollView;
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat offset = scrollView.contentOffset.x;
    
    self.segmentCtrl.selectedSegmentIndex = offset/self.view.width;
}

- (void)settingSegment{
    
    UISegmentedControl *segmentCtrl = [[UISegmentedControl alloc] initWithItems:@[@"消息",@"电话"]];
    
    self.navigationItem.titleView = segmentCtrl;
    
    segmentCtrl.width = 120;
    segmentCtrl.selectedSegmentIndex = 0;
    
    [segmentCtrl addTarget:self action:@selector(segmentBtnClick) forControlEvents:UIControlEventValueChanged];
    _segmentCtrl = segmentCtrl;
    
    
}

- (void)segmentBtnClick{
    NSLog(@"改变========改变");
    self.scrollView.contentOffset = CGPointMake(self.segmentCtrl.selectedSegmentIndex * self.view.width, 0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
