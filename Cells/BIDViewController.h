//
//  BIDViewController.h
//  Cells
//
//  Created by DAVID STROUD on 10/18/13.
//  Copyright (c) 2013 Grey Matter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
@property(copy,nonatomic) NSArray *computers;

@end
