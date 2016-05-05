//
//  DishTableViewCell.h
//  TableView连动
//
//  Created by Mac on 16/5/4.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DishModel.h"

@interface DishTableViewCell : UITableViewCell
@property (nonatomic, strong) DishModel* model;

@property (weak, nonatomic) IBOutlet UILabel *dishNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dishSoldCountLabel;

@property (weak, nonatomic) IBOutlet UILabel *dishDetailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *dishImageView;

@end
