//
//  PersonViewModel.h
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface PersonViewModel : NSObject

@property (nonatomic, strong) Person *person;

@property (nonatomic, readonly) NSString *ageDes;

@end
