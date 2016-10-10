//
//  VilleTableCell.m
//  KifoyiCarte
//
//  Created by 11408757 on 16/12/2014.
//  Copyright (c) 2014 11408757. All rights reserved.
//

#import "VilleTableCell.h"

@implementation VilleTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@synthesize imageCell;
@synthesize labelVille;

@end
