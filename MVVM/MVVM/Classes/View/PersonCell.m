//
//  PersonCell.m
//  MVVM
//
//  Created by 张木锋 on 2017/2/5.
//  Copyright © 2017年 ZMF. All rights reserved.
//

#import "PersonCell.h"

@implementation PersonCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]) {
        
    }
    
    return self;
}

- (void)setViewModel:(PersonViewModel *)viewModel {

    _viewModel = viewModel;
    
    self.textLabel.text = _viewModel.person.name;
    self.detailTextLabel.text = _viewModel.ageDes;
    self.textLabel.textColor = [UIColor redColor];
    self.detailTextLabel.textColor = [UIColor blueColor];
}






- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
