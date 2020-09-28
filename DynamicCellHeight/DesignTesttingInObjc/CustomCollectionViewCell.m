//
//  CustomCollectionViewCell.m
//  DesignTesttingInObjc
//
//  Created by sami on 28/9/20.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell {
    UIView *view;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    _image.image = nil;
    _titleLabel.text = @"";
    
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
        [self setup];
    }
    return self;
}

-(void)initialize {
    

    self.layer.shadowRadius  = 1.5f;
    self.layer.shadowColor   = [UIColor colorWithRed:176.f/255.f green:199.f/255.f blue:226.f/255.f alpha:1.f].CGColor;
    self.layer.shadowOffset  = CGSizeMake(0.0f, 0.0f);
    self.layer.shadowOpacity = 0.9f;
    self.layer.masksToBounds = NO;
    
}

-(void)setup{
    
     view = [[UIView alloc] init];
    _clickNowBtn = [[UIButton alloc]init];
    _image = [[UIImageView alloc] init];
    _titleLabel = [[UILabel alloc] init];

    view.backgroundColor = UIColor.whiteColor;
    view.clipsToBounds = YES;
    view.layer.cornerRadius = 5;
    
    view.translatesAutoresizingMaskIntoConstraints = false;
    _titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    _clickNowBtn.translatesAutoresizingMaskIntoConstraints = false;
    _image.translatesAutoresizingMaskIntoConstraints = false;

    [self addSubview:view];
    [view addSubview:_clickNowBtn];
    [view addSubview:_titleLabel];
    [view addSubview:_image];

    [view.leadingAnchor constraintEqualToAnchor:self.leadingAnchor].active = YES;
    [view.trailingAnchor constraintEqualToAnchor:self.trailingAnchor].active = YES;
    [view.topAnchor constraintEqualToAnchor:self.topAnchor].active = YES;
    [view.bottomAnchor constraintEqualToAnchor:self.bottomAnchor].active = YES;
    
    [_clickNowBtn.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:10].active = YES;
    [_clickNowBtn.trailingAnchor constraintEqualToAnchor:view.trailingAnchor].active = YES;
    [_clickNowBtn.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:-10].active = YES;
    [_clickNowBtn.heightAnchor constraintEqualToConstant:20].active = YES;

    [_titleLabel.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:10].active = YES;
    [_titleLabel.trailingAnchor constraintEqualToAnchor:view.trailingAnchor constant:-10].active = YES;
    [_titleLabel.bottomAnchor constraintEqualToAnchor:_clickNowBtn.topAnchor].active = YES;

    [_image.leadingAnchor constraintEqualToAnchor:view.leadingAnchor].active = YES;
    [_image.trailingAnchor constraintEqualToAnchor:view.trailingAnchor].active = YES;
    [_image.topAnchor constraintEqualToAnchor:view.topAnchor].active = YES;
    [_image.heightAnchor constraintEqualToConstant:100].active = YES;
    [_image.bottomAnchor constraintEqualToAnchor:_titleLabel.topAnchor constant:-5].active = YES;
    
    _titleLabel.numberOfLines = 0;
    _clickNowBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    _titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:13];

    //_clickNowBtn.backgroundColor = UIColor.redColor;
    

}

@end
