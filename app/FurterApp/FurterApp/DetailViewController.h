//
//  DetailViewController.h
//  FurterApp
//
//  Created by Levi Wilson on 3/20/13.
//  Copyright (c) 2013 Levi Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
