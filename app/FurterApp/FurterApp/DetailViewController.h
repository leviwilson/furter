//
//  DetailViewController.h
//  FurterApp
//
//  Created by Levi Wilson on 3/20/13.
//  Copyright (c) 2013 Levi Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate,UITableViewDelegate,UITableViewDataSource>
{
    NSArray *detaiItems;
}
@property (weak, nonatomic) IBOutlet UIButton *pagingButton;
@property (weak, nonatomic) IBOutlet UIButton *tablesButton;

@property (weak, nonatomic) IBOutlet UITextField *placeholderTextField;
@property (weak, nonatomic) IBOutlet UITextField *labelTextField;
@property (weak, nonatomic) IBOutlet UIButton *textButton;
@property (weak, nonatomic) IBOutlet UIButton *labeledButton;
@property (weak, nonatomic) IBOutlet UILabel *labeledLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *selectedItemLabel;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;


- (IBAction)onLabeledButtonClicked:(id)sender;
- (IBAction)someButtonClick:(id)sender;
- (IBAction)goToPaging:(id)sender;
- (IBAction)goToTables:(id)sender;

@end
