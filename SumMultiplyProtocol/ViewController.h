//
//  ViewController.h
//  SumMultiplyProtocol
//
//  Created by Pedro Contreras Nava on 28/08/14.
//  Copyright (c) 2014 Pedro Contreras Nava. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>

@property(weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)goToSecondView:(id)sender;
- (IBAction)goToFourthView:(id)sender;



@end
