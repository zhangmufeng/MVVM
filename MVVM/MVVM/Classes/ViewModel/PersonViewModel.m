//
//  PersonViewModel.m
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import "PersonViewModel.h"

@implementation PersonViewModel

- (NSString *)ageDes {
    
    return _person.age > 50 ? @"老年人" : @"年轻人";
}

@end
