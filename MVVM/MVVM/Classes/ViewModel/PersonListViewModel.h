//
//  PersonListViewModel.h
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PersonViewModel;
@interface PersonListViewModel : NSObject

// 保存转模型后的模型对象
@property (nonatomic, strong) NSMutableArray<PersonViewModel *> *listViewModelArrM;

// 向外界（view）提供加载数据的接口
- (void)loadPersonsData:(void(^)())completion;

@end
