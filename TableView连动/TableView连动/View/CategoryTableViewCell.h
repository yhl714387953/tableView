//
//  CategoryTableViewCell.h
//  TableView连动
//
//  Created by Mac on 16/5/5.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *selectImageView;
@property (weak, nonatomic) IBOutlet UILabel *categoryNameLabel;

@end
