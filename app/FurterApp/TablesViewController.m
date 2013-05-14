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
@synthesize testTableView, multipleSectionsTable, selectedLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        tableData = [[NSArray alloc] initWithObjects:@"First element", @"Second element", @"Third element", @"Fourth element", nil];
        firstSectionData = [[NSArray alloc] initWithObjects:@"FirstSectionFirstElement", @"FirstSectionSecondElement", @"FirstSectionThirdElement", nil];
        secondSectionData = [[NSArray alloc] initWithObjects:@"SecondSectionFirstElement", @"SecondSectionSecondElement", @"SecondSectionThirdElement", @"SecondSectionFourthElement", nil];
        
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [selectedLabel setAccessibilityLabel:@"selectedLabel"];
    [testTableView setAccessibilityLabel:@"testTableView"];
    [multipleSectionsTable setAccessibilityLabel:@"tableMultipleSections"];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if ([self isMultipleSectionTable:tableView]) {
        return 2;
    }
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([self isMultipleSectionTable:tableView])
    {
        return [self multipeTableViewNumberOfRowsForSection:section];
    }
    return [tableData count];
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self isMultipleSectionTable:tableView]) {
        
        return [self cellForTableView:tableView andIndexPath:indexPath];
        
    } else{
        
        UITableViewCell *cell = [testTableView dequeueReusableCellWithIdentifier:@"TableCell"];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TableCell"];
        }
        
        [cell setAccessibilityLabel:[tableData objectAtIndex:[indexPath row]]];
        [[cell textLabel] setText:[tableData objectAtIndex:[indexPath row]]];
        return cell;
    }
    
}

-(UITableViewCell *) cellForTableView:(UITableView *)tableView andIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell"];
    
    if ([indexPath section] == 0) {
        
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TableCell"];
        }
        
        [cell setAccessibilityLabel:[firstSectionData objectAtIndex:[indexPath row]]];
        [[cell textLabel] setText:[firstSectionData objectAtIndex:[indexPath row]]];
        return cell;
        
        
    } else {
        
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TableCell"];
        }
        
        [cell setAccessibilityLabel:[secondSectionData objectAtIndex:[indexPath row]]];
        [[cell textLabel] setText:[secondSectionData objectAtIndex:[indexPath row]]];
        return cell;
        
    }
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [selectedLabel setText:[tableData objectAtIndex:[indexPath row]]];
    
}

-(NSInteger)multipeTableViewNumberOfRowsForSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return[firstSectionData count];
            break;
        case 1:
            return [secondSectionData count];
            break;
        default:
            return 0;
            break;
    }
}

-(BOOL)isMultipleSectionTable:(UITableView *) tableView
{
    return [[tableView accessibilityLabel] isEqualToString:@"tableMultipleSections"];
}

@end