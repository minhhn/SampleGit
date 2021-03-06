//
//  MFDViewController.m
//  SampleApplication
//
//  Created by Minh Nguyen on 4/22/14.
//  Copyright (c) 2014 Misfit. All rights reserved.
//

#import "MFDViewController.h"

@interface MFDViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic, assign) NSInteger numberOfTaps;
@end

@implementation MFDViewController

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

- (IBAction)onButtonTapped:(UIButton *)sender
{
    self.numberOfTaps += 1;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        self.countLabel.text = [NSString stringWithFormat:@"%ld", self.numberOfTaps];
    });
}

@end
