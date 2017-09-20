//
//  MapTableViewCell.h
//  SummerYelpMock
//
//  Created by mac on 2017/9/5.
//  Copyright © 2017年 msw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpDataModel.h"


@interface MapTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end
