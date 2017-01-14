//
//  JGFirstOneTableView.m
//  JGNavSegmentScroll
//
//  Created by stkcctv on 17/1/14.
//  Copyright © 2017年 JG. All rights reserved.
//

#import "JGFirstOneTableView.h"

@interface JGFirstOneTableView () <UITableViewDelegate, UITableViewDataSource>


@end

static NSString * const JGFirstOneTableViewCellId = @"JGJGFirstOneTableViewCellId";
@implementation JGFirstOneTableView

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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:JGFirstOneTableViewCellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:JGFirstOneTableViewCellId];
    }
    
    cell.textLabel.text = @"哈哈哈";
    cell.detailTextLabel.text = @"我是哈哈哈的子标题";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.backgroundColor = [UIColor redColor];
    return cell;
    
}


@end
