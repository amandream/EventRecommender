//
//  FilterTableViewCell.h
//  SummerYelpMock
//
//  Created by mac on 2017/9/12.
//  Copyright © 2017年 msw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpFilterDataModel.h"
@interface FilterTableViewCell : UITableViewCell

- (void)updateDataModel:(YelpFilterDataModel *)dataModel;
@end
