//
//  ViewController.m
//  SumMultiplyProtocol
//
//  Created by Pedro Contreras Nava on 28/08/14.
//  Copyright (c) 2014 Pedro Contreras Nava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize result;


- (IBAction)goToSecondView:(id)sender {
    SecondViewController *secondvw=[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondvw.delegate=self;
    UINavigationController *navController =[[UINavigationController
alloc] initWithRootViewController:secondvw];
    [self presentModalViewController:navController animated:YES];
}


-(void) sum: (int) val1 secondparam: (int) val2
{
    int a;
    a=val1+val2;
    result.text=[NSString stringWithFormat:@"The result of the Sum is %d",a];
}

-(void) multiply: (int) x secondvalue: (int) y
{
    int a;
    a=x*y;
    result.text=[NSString stringWithFormat:@"The result of the mult is %d",a];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
