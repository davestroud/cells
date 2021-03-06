//
//  BIDNameAndColorCell.h
//  Cells
//
//  Created by DAVID STROUD on 10/18/13.
//  Copyright (c) 2013 Grey Matter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDNameAndColorCell : UITableViewCell

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *color;

@property (strong, nonatomic) IBOutlet UILabel *nameValue;
@property (strong, nonatomic) IBOutlet UILabel *colorValue;

@end
