//
//  JGFirstTwoTableView.m
//  JGNavSegmentScroll
//
//  Created by stkcctv on 17/1/14.
//  Copyright © 2017年 JG. All rights reserved.
//

#import "JGFirstTwoTableView.h"

@interface JGFirstTwoTableView () <UITableViewDelegate, UITableViewDataSource>

@end

static NSString * const JGFirstTwoTableViewCellId = @"JGFirstTwoTableViewCellId";
@implementation JGFirstTwoTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //self.backgroundColor = [UIColor redColor];
        self.delegate = self;
        self.dataSource = self;
//        self.bounces = NO;
    }
    return self;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:JGFirstTwoTableViewCellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:JGFirstTwoTableViewCellId];
    }
    cell.textLabel.text = @"嘻嘻";
    cell.detailTextLabel.text = @"我是嘻嘻的子标题";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.backgroundColor = [UIColor redColor];
    return cell;
    
}

@end
