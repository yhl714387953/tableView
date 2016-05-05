//
//  DishModel.h
//  TableView连动
//
//  Created by Mac on 16/5/4.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DishModel : NSObject
@property (nonatomic, copy)     NSString*   dishName;
@property (nonatomic, strong)   NSNumber*   dishID;
@property (nonatomic, copy)     NSString*   dishDetail;
@property (nonatomic)           NSUInteger  soldCount;
@property (nonatomic)           CGFloat     price;
@property (nonatomic, copy)     NSString*   dishImageUrl;

@end
