//
//  SecondViewController.m
//  SumMultiplyProtocol
//
//  Created by Pedro Contreras Nava on 28/08/14.
//  Copyright (c) 2014 Pedro Contreras Nava. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end


@implementation SecondViewController

@synthesize value1,value2,delegate;

-(IBAction)add:(id)sender
{
    [delegate sum:[value1.text intValue] secondparam:[value2.text intValue]];
    [self dismissModalViewControllerAnimated:YES];
}

-(IBAction) multiply:(id)sender
{
    [delegate multiply: [value1.text intValue] secondvalue:[value2.text
                                                            intValue]];
    [self dismissModalViewControllerAnimated:YES];
}

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
