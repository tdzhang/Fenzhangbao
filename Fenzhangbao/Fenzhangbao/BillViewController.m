//
//  BillViewController.m
//  Fenzhangbao
//
//  Created by Bing Han on 4/18/14.
//  Copyright (c) 2014 Deep126. All rights reserved.
//

#import "BillViewController.h"
#import "TransPaySummaryTableViewController.h"
#import "TransPay.h"

@interface BillViewController ()
@property (weak, nonatomic) IBOutlet UITableView *transPayTableView;
@property (weak, nonatomic) IBOutlet UIView *billSummaryView;
@property (nonatomic,strong) TransPaySummaryTableViewController *transPayTVC;
@end

@implementation BillViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.transPayTVC = [[TransPaySummaryTableViewController alloc] init];
    [self.transPayTableView setDataSource:self.transPayTVC];
    [self.transPayTableView setDelegate:self.transPayTVC];
    
    TransPay *transPay1 = [[TransPay alloc] init];
    transPay1.transPayTitle = @"Transaction 8";
    transPay1.transPayDetails = @"$50, Shared by Steven, John, and 5 others";
    TransPay *transPay2 = [[TransPay alloc] init];
    transPay2.transPayTitle = @"Payment 3";
    transPay2.transPayDetails = @"Li Lei paid Han Meimei $3.75";
    self.transPayTVC.transPays = @[transPay1, transPay2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
