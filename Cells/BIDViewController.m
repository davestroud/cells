//
//  BIDViewController.m
//  Cells
//
//  Created by DAVID STROUD on 10/18/13.
//  Copyright (c) 2013 Grey Matter. All rights reserved.
//

#import "BIDViewController.h"
#import "BIDNameAndColorCell.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

static NSString *CellTableIdentifier = @"CellTableIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	self.computers = @[
  @{@"Name" : @"MacBook", @"Color" : @"White"},
  @{@"Name": @"MacBook Pro", @"Color" : @"Silver"},
  @{@"Name": @"iMac", @"Color" : @"Silver"},
  @{@"Name" : @"Mac Mini", @"Color" : @"Silver"}];
    
    UITableView *tableview = (id) [self.view viewWithTag:1];
    [tableview registerClass:[BIDNameAndColorCell class] forCellReuseIdentifier:CellTableIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 
#pragma mark Table Date Source Methods
- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BIDNameAndColorCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:CellTableIdentifier];
    
    NSDictionary *rowData = self.computers[indexPath.row];
    
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    
    return cell;
}















@end
