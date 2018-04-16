//
//  ViewController.m
//  KIBaseSettingCellDemo
//
//  Created by xinyu on 2018/3/8.
//  Copyright © 2018年 MaChat. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "RCDGroupSettingsTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger rows;
    if (section == 0) {
        rows = 1;
    } else if (section == 1) {
        rows = 4;
    } else if (section == 2) {
        rows = 1;
    } else {
        rows = 3;
    }
    return rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RCDGroupSettingsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RCDGroupSettingsTableViewCell"];
    if (!cell) {
        cell = [[RCDGroupSettingsTableViewCell alloc] initWithIndexPath:indexPath andGroupInfo:nil];
    }
//    cell.baseSettingTableViewDelegate = self;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 14.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
#pragma mark - setter && getter
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        _tableView.backgroundColor = [UIColor lightGrayColor];
        _tableView.showsVerticalScrollIndicator = NO;
    }
    return _tableView;
}


@end
