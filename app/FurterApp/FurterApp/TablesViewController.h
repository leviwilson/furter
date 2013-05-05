//
//  TablesViewController.h
//  FurterApp
//
//  Created by Jeremy Stewart on 5/5/13.
//  Copyright (c) 2013 Levi Wilson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TablesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *tableData; 
}
@property (weak, nonatomic) IBOutlet UILabel *selectedLabel;
@property (weak, nonatomic) IBOutlet UITableView *testTableView;

@end
