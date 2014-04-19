//
//  cheersViewController.m
//  Fenzhangbao
//
//  Created by Tongda Zhang on 4/11/14.
//  Copyright (c) 2014 Deep126. All rights reserved.
//

#import "cheersViewController.h"
#import "BillSummaryTableViewController.h"
#import "MenuViewController.h"
@interface cheersViewController ()
@property (weak, nonatomic) IBOutlet UIView *MenuView;
@property (weak, nonatomic) IBOutlet UITableView *billTableView;
@property (weak, nonatomic) IBOutlet UIView *totalBalanceView;
@property (nonatomic,strong) BillSummaryTableViewController *billTVC;
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
    Bill *b1=[[Bill alloc] init];
    b1.billName=@"Cell Phone Bill";
    b1.billBalance=100.0;
    Bill *b2=[[Bill alloc] init];
    b2.billName=@"Supermarket";
    b2.billBalance=-50.0;
    self.billTVC.bills=@[b1,b2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString * segueName = segue.identifier;
    if ([segueName isEqualToString: @"Menu"]) {
        MenuViewController *childViewController = (MenuViewController *) [segue destinationViewController];
        childViewController.rootViewController = self;
    }
}

- (void)slide {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:.5];
    
    CGRect frame = self.billTableView.frame;
    frame.origin.x = self.MenuView.frame.size.width;
    self.billTableView.frame = frame;
    
    CGRect frame2 = self.totalBalanceView.frame;
    frame2.origin.x = self.MenuView.frame.size.width;
    self.totalBalanceView.frame = frame2;
    
    [UIView commitAnimations];
}

- (void)slideBack {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:.5];
    
    CGRect frame = self.billTableView.frame;
    frame.origin.x = self.MenuView.frame.origin.x;
    self.billTableView.frame = frame;
    
    CGRect frame2 = self.totalBalanceView.frame;
    frame2.origin.x = self.MenuView.frame.origin.x;
    self.totalBalanceView.frame = frame2;
    
    [UIView commitAnimations];
}
- (IBAction)showMenu:(id)sender {
    [self slide];
}



@end
