//
//  TablesViewController.m
//  FurterApp
//
//  Created by Jeremy Stewart on 5/5/13.
//  Copyright (c) 2013 Levi Wilson. All rights reserved.
//

#import "TablesViewController.h"

@interface TablesViewController ()

@end

@implementation TablesViewController
@synthesize testTableView, selectedLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        tableData = [[NSArray alloc] initWithObjects:@"First element", @"Second element", @"Third element", @"Fourth element", nil]; 
    }
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count]; 
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [testTableView dequeueReusableCellWithIdentifier:@"TableCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TableCell"]; 
    }
    
    [cell setAccessibilityLabel:[tableData objectAtIndex:[indexPath row]]];
    [[cell textLabel] setText:[tableData objectAtIndex:[indexPath row]]];
    return cell; 

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [selectedLabel setText:[tableData objectAtIndex:[indexPath row]]]; 
    
}

@end
