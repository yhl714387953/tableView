//
//  CategoryModel.h
//  TableView连动
//
//  Created by Mac on 16/5/4.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DishModel.h"

@interface CategoryModel : NSObject
@property (nonatomic, copy)     NSString* categoryName;
@property (nonatomic, strong)   NSNumber* categoryID;
@property (nonatomic, strong)   NSMutableArray<DishModel*>* dishes;

@end
