//
//  CustomCollectionViewCell.h
//  DesignTesttingInObjc
//
//  Created by sami on 28/9/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomCollectionViewCell : UICollectionViewCell
@property (strong,nonatomic) UIImageView *image;
@property (strong,nonatomic) UILabel *titleLabel;
@property (strong,nonatomic) UIButton *clickNowBtn;

@end

NS_ASSUME_NONNULL_END
