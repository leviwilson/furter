//
//  PagingViewController.m
//  FurterApp
//
//  Created by Jeremy Stewart on 4/30/13.
//  Copyright (c) 2013 Levi Wilson. All rights reserved.
//

#import "PagingViewController.h"

@interface PagingViewController ()

@end

@implementation PagingViewController
@synthesize scrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor blueColor], nil];
    for (int i = 0; i < 3; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UILabel *label = [[UILabel alloc] initWithFrame:frame];
        [label setText:[NSString stringWithFormat:@"Label:%d",i]];
        [label setAccessibilityLabel:[NSString stringWithFormat:@"TextField:%d",i]];
        [scrollView setAccessibilityLabel:@"scrollView"]; 
        [label setBackgroundColor:[colors objectAtIndex:i]];
        
        
        
        [scrollView addSubview:label];
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * 3, self.scrollView.frame.size.height);
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
