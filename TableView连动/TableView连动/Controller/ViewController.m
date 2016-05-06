//
//  ViewController.m
//  TableView连动
//
//  Created by Mac on 16/5/4.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "DishTableViewCell.h"
#import "CategoryTableViewCell.h"
#import "DishHeaderView.h"
#import "CategoryModel.h"
#import "DishModel.h"

static NSString* kCategoryCellIdentifier = @"categoryCellIdentifier";
static NSString* kDishCellIdentifier = @"dishCellIdentifier";
static NSString* kDishHeaderIdentifier = @"dishHeaderIdentifier";

typedef NS_ENUM(NSInteger, TableViewTag) {
    TableViewTagDefault = 0,
    TableViewTagCategory = 1,
    TableViewTagDish = 2
};

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    BOOL _isTapCategoryTableView;
}
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;
@property (weak, nonatomic) IBOutlet UITableView *dishTableView;

@property (nonatomic, strong) NSMutableArray<CategoryModel*>* categories;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableView];
    [self initAttributes];
    
    [self resetView];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark -
#pragma mark - init
-(void)initTableView{
    UINib* categoryNib = [UINib nibWithNibName:NSStringFromClass([CategoryTableViewCell class]) bundle:[NSBundle mainBundle]];
    [self.categoryTableView registerNib:categoryNib forCellReuseIdentifier:kCategoryCellIdentifier];
    self.categoryTableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectZero];
    self.categoryTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    UINib* nib = [UINib nibWithNibName:NSStringFromClass([DishTableViewCell class]) bundle:[NSBundle mainBundle]];
    [self.dishTableView registerNib:nib forCellReuseIdentifier:kDishCellIdentifier];
    self.dishTableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    self.dishTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    UINib* headerNib = [UINib nibWithNibName:NSStringFromClass([DishHeaderView class]) bundle:[NSBundle mainBundle]];
    [self.dishTableView registerNib:headerNib forHeaderFooterViewReuseIdentifier:kDishHeaderIdentifier];
}

-(void)initAttributes{
    self.categories = [NSMutableArray array];
    
    for (int i = 0; i < 30; i++) {
        CategoryModel* cModel = [[CategoryModel alloc] init];
        cModel.categoryID = @(i);
        cModel.categoryName = [NSString stringWithFormat:@"嘴爷分类%d", i];
        cModel.dishes = [NSMutableArray array];
        [self.categories addObject:cModel];
        
        /*********************构造菜品*************************/
        for (int j = 0; j < arc4random() % 6 + 6; j++) {
            DishModel* dModel = [[DishModel alloc] init];
            dModel.dishID = @(i * 100 + j);
            dModel.dishName = [NSString stringWithFormat:@"梅菜扣肉%d", j];
            dModel.soldCount = arc4random() % 888 + 666;
            dModel.dishDetail = @"鸡排+鸡排+鸡排";
            dModel.dishImageUrl = @"http://www.51ppt.com.cn/Article/Uploadphotos_0708/200604/200641474815848.png";
            if (j % 3 == 0) {
                dModel.dishDetail = @"鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排";
                dModel.dishImageUrl = @"http://www.51ppt.com.cn/Article/Uploadphotos_0708/200604/200641315844978.png";
            }else if (j % 2 == 0) {
                dModel.dishDetail = @"鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排+鸡排";
                dModel.dishImageUrl = @"http://img.web07.cn/uploads/Png/c101117/12Y955214230-4IZ.png";
            }
            
            [cModel.dishes addObject:dModel];
        }
        /*********************构造菜品*************************/
    }
}

#pragma mark -
#pragma mark - method
-(void)resetView{

    [self.categoryTableView reloadData];
    [self.dishTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (tableView.tag == TableViewTagCategory){
        return 1;
    }
    return self.categories.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView.tag == TableViewTagCategory) {
        return self.categories.count;
    }
    
    CategoryModel* model = self.categories[section];
    
    return model.dishes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (tableView.tag == TableViewTagCategory) {
        CategoryTableViewCell *cell = (CategoryTableViewCell*)[tableView dequeueReusableCellWithIdentifier:kCategoryCellIdentifier];
        CategoryModel* model = self.categories[indexPath.row];
        cell.categoryNameLabel.text = [NSString stringWithFormat:@"%@",  model.categoryName];
        
        
        return cell;
    }
    
    DishTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDishCellIdentifier];

    CategoryModel* model = self.categories[indexPath.section];
    DishModel* dModel = model.dishes[indexPath.row];
    cell.model = dModel;
    
//    如果在cell的layoutSubView里去赋值，并没有自动调节label的高度
    cell.dishDetailLabel.text = [NSString stringWithFormat:@"%@", dModel.dishDetail];
    // Configure the cell...
    
    return cell;
}

#pragma mark -
#pragma mark - Table view delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView.tag == TableViewTagDish) {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
    
    _isTapCategoryTableView = YES;
    
    if (tableView.tag == TableViewTagCategory) {
        [self.dishTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:indexPath.row] atScrollPosition:(UITableViewScrollPositionTop) animated:YES];
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView.tag == TableViewTagCategory) {
        return 44;
    }
    
    return UITableViewAutomaticDimension;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView.tag == TableViewTagCategory) {
        return 44;
    }
    return UITableViewAutomaticDimension;
}

-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{
    NSLog(@"willDisplayHeaderView");
    
    if (_isTapCategoryTableView) {
        return;
    }
    
    NSArray* indexPathes = [tableView indexPathsForVisibleRows];
    if (indexPathes.count == 0) {
        return;
    }
    
    NSIndexPath* indexPath = [indexPathes firstObject];//找可见的cell中最小的索引
    [self.categoryTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:indexPath.section inSection:0] animated:YES scrollPosition:(UITableViewScrollPositionMiddle)];
}

-(void)tableView:(UITableView *)tableView didEndDisplayingHeaderView:(nonnull UIView *)view forSection:(NSInteger)section{
    NSLog(@"didEndDisplayingHeaderView");
    
    if (_isTapCategoryTableView) {
        return;
    }
    
    NSArray* indexPathes = [tableView indexPathsForVisibleRows];
    if (indexPathes.count == 0) {
        return;
    }

    NSIndexPath* indexPath = [indexPathes firstObject];//找可见的cell中最小的索引
    [self.categoryTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:indexPath.section inSection:0] animated:YES scrollPosition:(UITableViewScrollPositionMiddle)];
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (tableView.tag == TableViewTagCategory) {
        return nil;
    }
    
    DishHeaderView* headerView = (DishHeaderView*)[tableView dequeueReusableHeaderFooterViewWithIdentifier:kDishHeaderIdentifier];
    CategoryModel* model = self.categories[section];
    headerView.model = model;
    return headerView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (tableView.tag == TableViewTagCategory) {
        return 1;
    }
    
    return 30;
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    _isTapCategoryTableView = NO;
}

@end
