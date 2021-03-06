//
//  SCMovieCell.h
//  scanorama
//
//  Created by Lion User on 07/09/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol FavoriteButtonDelegate 


-(void)movieCell:(UITableViewCell *)cell favoriteButtonClicked:(UIButton *)button;

@end

@interface SCMovieCell : UITableViewCell 



@property (assign) id<FavoriteButtonDelegate> delegate;


@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieEnLabel;
@property (weak, nonatomic) IBOutlet UILabel *directorLenghLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearsCountryLabel;

@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;


@property (strong, nonatomic) NSString *cinema;
@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSString *city;

-(IBAction)favoriteButtonClicked:(id)sender;


@end
