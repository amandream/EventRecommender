//
//  DetailViewHeaderTableViewCell.m
//  SummerYelpMock
//
//  Created by mac on 2017/9/5.
//  Copyright © 2017年 msw. All rights reserved.
//

#import "DetailViewHeaderTableViewCell.h"
#import <UIImageView+AFNetworking.h>


@interface DetailViewHeaderTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *restaurantName;

@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *starImage;
@property (weak, nonatomic) IBOutlet UILabel *reviewsLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *openingTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *restaurantImage;



@end

@implementation DetailViewHeaderTableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel
{
    self.restaurantName.text = dataModel.name;
    [self.restaurantImage setImageWithURL:[NSURL URLWithString:dataModel.imageUrl]];
    self.starImage.image = dataModel.ratingImage;
    self.reviewsLabel.text = [NSString stringWithFormat:@"%ld reviews", dataModel.reviewCount];
    self.priceLabel.text = dataModel.price;
    self.categoryLabel.text = dataModel.categories;
    self.distanceLabel.text = [NSString stringWithFormat:@"%.1f mi", dataModel.distance];
}

@end
