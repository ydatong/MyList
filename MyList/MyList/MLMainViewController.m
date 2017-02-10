//
//  MLMainViewController.m
//  MyList
//
//  Created by kanewang on 2017/2/10.
//  Copyright © 2017年 shuige. All rights reserved.
//

#import "MLMainViewController.h"
#import "MLTargetCell.h"
#import "MLNewTargetController.h"
#import "MLSettingViewController.h"

@interface MLMainViewController ()

{
    UISegmentedControl *_segmentedControl;
    MLTargetStatus _targetStatus;
    NSMutableArray <MLTargetModel *> *_targetList;
}

@end

@implementation MLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUI {
    
    _segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"进行中",@"已完成",@"废弃"]];
    _segmentedControl.frame = CGRectMake(0, 0, 200, 30.0);
    _segmentedControl.selectedSegmentIndex = 0;
    [_segmentedControl addTarget:self action:@selector(segementValueChanged) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = _segmentedControl;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewTarget)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(gotoSetting)];
}

- (void)loadTargetWithStatus:(MLTargetStatus)status {
    
    _targetList = [NSMutableArray arrayWithCapacity:0];
    NSArray *list = [[MLDBManager sharedManager] fetchAllTargetByStatus:status];
    [_targetList addObjectsFromArray:list];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


#pragma mark - View Event

- (void)segementValueChanged {
    
    _targetStatus = _segmentedControl.selectedSegmentIndex;
    
}

- (void)addNewTarget {
    
    MLNewTargetController *newTargetVC = [[UIStoryboard storyboardWithName:@"MLNewTarget" bundle:nil] instantiateViewControllerWithIdentifier:@"NewTargetVC"];
    [self.navigationController pushViewController:newTargetVC animated:YES];
}

- (void)gotoSetting {
    
    MLSettingViewController *settingVC = [[UIStoryboard storyboardWithName:@"MLSetting" bundle:nil] instantiateViewControllerWithIdentifier:@"SettingVC"];
    [self.navigationController pushViewController:settingVC animated:YES];
}

@end










