//
//  ViewController.m
//  DesignTesttingInObjc
//
//  Created by sami on 28/9/20.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"

#define factX                                      UIScreen.mainScreen.bounds.size.width/320
#define factY                                      UIScreen.mainScreen.bounds.size.height/568

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout> {
    
    UICollectionView *collectionView;
    NSArray *titleArray;
}

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    titleArray = [NSArray arrayWithObjects:@"To get the Offer",@"To get the Offer To get the Offer To get the Offer To get the Offer",@"To get the Offer",@"Amar sonar bangla ami tomai valobashi. Chirodin tomar akash tomar batash. Md. Shamiul islam sami. Brain station 23 ltd. Grameenphone ltd.",@"To get the Offer",@"To get the Offer",@"To get the Offer", nil];
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
    
    collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 30, self.view.bounds.size.width, 220) collectionViewLayout:layout];
    [collectionView setDataSource:self];
    [collectionView setDelegate:self];
    
    [collectionView registerClass:[CustomCollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [collectionView setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:collectionView];
}

- (CGFloat)getTextHeightFromString:(NSString *)text ViewWidth:(CGFloat)width WithPading:(CGFloat)pading FontName:(NSString *)fontName AndFontSize:(CGFloat)fontSize
{
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont fontWithName:fontName size:fontSize]};
    CGRect rect = [text boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size.height + pading;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return titleArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    cell.image.image = [UIImage imageNamed:@"mobile"];
    cell.titleLabel.text = [titleArray objectAtIndex:indexPath.item];
    [cell.clickNowBtn setTitle:@"Click Now  >" forState:UIControlStateNormal];
    [cell.clickNowBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{

    CGFloat fl = [self getTextHeightFromString:titleArray[indexPath.item] ViewWidth:240*factX WithPading:10 FontName:@"HelveticaNeue" AndFontSize:13];
    return CGSizeMake(240*factX, 100 + fl + 20 + 20);
}



@end
