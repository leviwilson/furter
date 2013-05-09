//
//  DetailViewController.m
//  FurterApp
//
//  Created by Levi Wilson on 3/20/13.
//  Copyright (c) 2013 Levi Wilson. All rights reserved.
//

#import "DetailViewController.h"
#import "PagingViewController.h"
#import "TablesViewController.h"
@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController
@synthesize slider, pagingButton, selectedItemLabel,tablesButton;

- (id)init
{
    self = [super init];
    if (self) {
        detaiItems = [[NSArray alloc] initWithObjects:@"First Item", @"Second Item", @"Third Item", nil];
}
    return self;
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    [self.labeledButton setAccessibilityLabel:@"labeledButtonId"];
    [self.labeledLabel setAccessibilityLabel:@"labelByAccessibilityLabel"];
    [slider setAccessibilityLabel:@"sliderByLabel"];
    [pagingButton setAccessibilityLabel:@"PagingButton"];
    [tablesButton setAccessibilityLabel:@"TablesButton"]; 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

- (IBAction)someButtonClick:(id)sender {
    [self.labelTextField setText:@"The button was clicked!"];
}

- (IBAction)goToPaging:(id)sender
{
    PagingViewController *pagingViewController = [[PagingViewController alloc] init];
    [[self navigationController] pushViewController:pagingViewController animated:YES];
}

- (IBAction)goToTables:(id)sender
{
    TablesViewController *tablesViewController = [[TablesViewController alloc] init];
    [[self navigationController] pushViewController:tablesViewController animated:YES]; 
}
- (IBAction)onLabeledButtonClicked:(id)sender {
    [self.labelTextField setText:@"The labeled button was clicked!"];
}

@end
