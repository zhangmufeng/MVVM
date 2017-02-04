//
//  PersonListViewModel.m
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import "PersonListViewModel.h"
#import "PersonViewModel.h"
#import "Person.h"

@implementation PersonListViewModel

- (void)loadPersonsData:(void (^)())completion {
    
    // 实例化存储对象
    _listViewModelArrM = [NSMutableArray array];
    
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        /// 加载数据，这里采用模拟数据
        
        // 保存的模型对象的可变数组
        NSMutableArray *arrM = [NSMutableArray array];
        
        for (NSInteger i = 0; i < 30; i++) {
            
            // 实例化ViewModel模型对象
            PersonViewModel *viewModel = [PersonViewModel new];
            // 实例化Model对象
            viewModel.person = [Person new];
            
            // 赋值
            NSInteger age = arc4random_uniform(100) + 1;
            viewModel.person.name = [@"张木锋 - " stringByAppendingFormat:@"%zd -- 年龄:%zd", i, age];
            viewModel.person.age = age;
            
            // 把viewModel对象添加到数组
            [arrM addObject:viewModel];
        }
        
        // 全部赋完值，把可变数组arrM中的对象全部添加到personListViewModel的属性数组中
        [_listViewModelArrM addObjectsFromArray:arrM];
        
        // 回调
        dispatch_async(dispatch_get_main_queue(), ^{
            if (completion) {
                completion();
            }
        });
        
    });
    
    
}

@end
