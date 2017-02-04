//
//  ViewController.m
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import "ViewController.h"
#import "PersonListViewModel.h"
#import "PersonCell.h"

#define cellID @"cellID"
@interface ViewController () <UITableViewDataSource>

@end

@implementation ViewController {
    
    // listViewModel对象
    PersonListViewModel *_personListViewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 创建tableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    
    // 设置tableView的数据源和注册cell
    tableView.dataSource = self;
    [tableView registerClass:[PersonCell class] forCellReuseIdentifier:cellID];
    tableView.rowHeight = 60;
    
    // 实例化_personList对象
    _personListViewModel = [PersonListViewModel new];
    // 用_personListViewModel调用listViewModel中的加载数据的方法加载数据
    [_personListViewModel loadPersonsData:^{
       
        [tableView reloadData];
        
    }];
    
}

#pragma mark - 数据源方法

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _personListViewModel.listViewModelArrM.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    cell.viewModel = _personListViewModel.listViewModelArrM[indexPath.row];
    
    return cell;
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
