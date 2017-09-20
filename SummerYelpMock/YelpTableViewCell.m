//
//  YelpTableViewCell.m
//  SummerYelpMock
//
//  Created by mac on 2017/8/29.
//  Copyright © 2017年 msw. All rights reserved.
//

#import "YelpTableViewCell.h"
#import <UIImageView+AFNetworking.h>

@interface YelpTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *restaurantImage;
@property (weak, nonatomic) IBOutlet UILabel *restaurantName;
@property (weak, nonatomic) IBOutlet UIImageView *ratingImage;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *reviews;
@property (weak, nonatomic) IBOutlet UILabel *dollarLabel;

@end

@implementation YelpTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // here is for the cornered image
    self.restaurantImage.layer.cornerRadius = 5.0f;
    self.restaurantImage.layer.masksToBounds = YES;

}

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel
{
    self.restaurantName.text = dataModel.name;
    [self.restaurantImage setImageWithURL:[NSURL URLWithString:dataModel.imageUrl]];
    self.ratingImage.image = dataModel.ratingImage;
    self.reviews.text = [NSString stringWithFormat:@"reviews %ld", dataModel.reviewCount];
    self.dollarLabel.text = dataModel.price;
    self.address.text = dataModel.displayAddress;
    self.category.text = dataModel.categories;
}


@end
