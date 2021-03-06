//
//  SCMovieCell.m
//  scanorama
//
//  Created by Lion User on 07/09/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SCMovieCell.h"

@implementation SCMovieCell

@synthesize delegate = _delegate;

@synthesize timeLabel = _timeLabel;
@synthesize movieLabel = _movieLabel;
@synthesize movieEnLabel = _movieEnLabel;
@synthesize directorLenghLabel = _directorLenghLabel;
@synthesize yearsCountryLabel = _yearsCountryLabel;
@synthesize favoriteButton = _favoriteButton;
@synthesize thumbImage = _thumbImage;
@synthesize cinema = _cinema;
@synthesize city = _city;
@synthesize date = _date;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) setHighlighted:(BOOL)highlighted animated:(BOOL)animated   {
    
    [super setHighlighted:highlighted animated:animated];
    self.favoriteButton.highlighted = NO;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    self.favoriteButton.highlighted = NO;

    // Configure the view for the selected state
}

-(void) favoriteButtonClicked:(id)sender {
    [self.delegate movieCell:self favoriteButtonClicked:sender];
}



@end
