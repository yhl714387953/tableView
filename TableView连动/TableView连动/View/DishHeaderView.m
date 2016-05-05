//
//  DishHeaderView.m
//  TableView连动
//
//  Created by Mac on 16/5/4.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DishHeaderView.h"

@implementation DishHeaderView

-(void)layoutSubviews{
    [super layoutSubviews];
//    self.categoryName = self.categoryName ? : @"   ";
    if (!self.model.categoryName || self.model.categoryName.length < 2) {
        return;
    }
    self.label.backgroundColor = [UIColor colorWithRed:241 / 255.0 green:241 / 255.0 blue:241 / 255.0 alpha:1];
    NSMutableParagraphStyle* style = [[NSMutableParagraphStyle alloc] init];
    style.firstLineHeadIndent = 15;//段落首字缩进
    NSMutableAttributedString* string = [[NSMutableAttributedString alloc] initWithString:self.model.categoryName attributes:@{NSForegroundColorAttributeName:[UIColor grayColor], NSFontAttributeName:[UIFont systemFontOfSize:12], NSParagraphStyleAttributeName: style} ];
    NSDictionary* dic1 = @{NSForegroundColorAttributeName:[UIColor greenColor], NSFontAttributeName:[UIFont systemFontOfSize:15], NSParagraphStyleAttributeName: style};
    [string addAttributes:dic1 range:NSMakeRange(0, 2)];
    
    self.label.attributedText = string;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
