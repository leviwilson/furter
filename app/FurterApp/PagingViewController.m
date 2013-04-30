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
        [scrollView setAccessibilityLabel:@"scrollView"]; 
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
        
        UIView *subview = [[UIView alloc] initWithFrame:frame];
        UILabel *label = [[UILabel alloc] initWithFrame:frame];
        [label setText:[NSString stringWithFormat:@"Label:%d",i]];
        [label setAccessibilityLabel:[NSString stringWithFormat:@"TextField:%d",i]];
        [subview setBackgroundColor:[colors objectAtIndex:i]];
        [subview setAccessibilityLabel:[NSString stringWithFormat:@"Subview:%@", [UIColor description]]];

        
        [scrollView addSubview:subview];
        [scrollView addSubview:label]; 
        
        
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * colors.count, self.scrollView.frame.size.height);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
