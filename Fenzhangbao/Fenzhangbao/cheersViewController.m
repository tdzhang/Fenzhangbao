//
//  cheersViewController.m
//  Fenzhangbao
//
//  Created by Tongda Zhang on 4/11/14.
//  Copyright (c) 2014 Deep126. All rights reserved.
//

#import "cheersViewController.h"
#import "BillSummaryTableViewController.h"

@interface cheersViewController ()
@property (weak, nonatomic) IBOutlet UITableView *billTableView;
@property (nonatomic,strong)BillSummaryTableViewController* billTVC;
@end

@implementation cheersViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.billTVC= [[BillSummaryTableViewController alloc] init];
    [self.billTableView setDataSource:self.billTVC];
    [self.billTableView setDelegate:self.billTVC];
    
    //temporaly add some data
    Bill* b1=[[Bill alloc] init];
    b1.billName=@"Cell Phone Bill";
    b1.billBalance=100.0;
    Bill* b2=[[Bill alloc] init];
    b2.billName=@"Supermarket";
    b2.billBalance=-50.0;
    self.billTVC.bills=@[b1,b2];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
