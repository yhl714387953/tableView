//
//  DishHeaderView.h
//  TableView连动
//
//  Created by Mac on 16/5/4.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryModel.h"

@interface DishHeaderView : UITableViewHeaderFooterView
@property (nonatomic, strong)CategoryModel* model;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end
