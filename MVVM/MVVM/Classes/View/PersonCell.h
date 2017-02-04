//
//  PersonCell.h
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonViewModel.h"

@interface PersonCell : UITableViewCell

@property (nonatomic, strong) PersonViewModel *viewModel;

@end
