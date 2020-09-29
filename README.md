# CollectionView-Dynamic-cell-sizing

<img src = "image.png" width="320" height="500">

```
- (CGFloat)getTextHeightFromString:(NSString *)text ViewWidth:(CGFloat)width WithPading:(CGFloat)pading FontName:(NSString *)fontName AndFontSize:(CGFloat)fontSize
{
    NSDictionary *attributes = @{NSFontAttributeName: [UIFont fontWithName:fontName size:fontSize]};
    CGRect rect = [text boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil];
    return rect.size.height + pading;
}
```

```
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{

    CGFloat fl = [self getTextHeightFromString:titleArray[indexPath.item] ViewWidth:240*factX WithPading:10 FontName:@"HelveticaNeue" AndFontSize:13];
    return CGSizeMake(240*factX, 100 + fl + 20 + 20);
}
```
