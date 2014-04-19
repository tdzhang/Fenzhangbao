//
//  AddBillViewController.m
//  Fenzhangbao
//
//  Created by Bing Han on 4/18/14.
//  Copyright (c) 2014 Deep126. All rights reserved.
//

#import "AddBillViewController.h"

@interface AddBillViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *billNameTextView;
@property (weak, nonatomic) IBOutlet UITextView *billDescriptionTextView;
@property (weak, nonatomic) IBOutlet UITextView *sharerTextView;

@end

@implementation AddBillViewController

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
    
    UITextView *billNameTextView = [[UITextView alloc] init];
    billNameTextView.delegate = self;
    billNameTextView.text = @"Bill Name ...";
    billNameTextView.textColor = [UIColor lightGrayColor];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"Bill Name ..."]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor];
    }
    [textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Bill Name ...";
        textView.textColor = [UIColor lightGrayColor];
    }
    [textView resignFirstResponder];
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
