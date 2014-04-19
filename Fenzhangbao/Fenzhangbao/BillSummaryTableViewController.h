//
//  BillSummaryTableViewController.h
//  Fenzhangbao
//
//  Created by Tongda Zhang on 4/11/14.
//  Copyright (c) 2014 Deep126. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Bill.h"
#import "BillSummaryCell.h"

@interface BillSummaryTableViewController : UITableViewController
@property(nonatomic,strong) NSArray *bills;
@end
