//
//  SecondViewController.h
//  SumMultiplyProtocol
//
//  Created by Pedro Contreras Nava on 28/08/14.
//  Copyright (c) 2014 Pedro Contreras Nava. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewControllerDelegate

-(void) sum: (int) val1 secondparam: (int) val2;
@optional
-(void) multiply: (int) x secondvalue: (int) y;

@end

@interface SecondViewController : UIViewController{
    IBOutlet UITextField *value1;
    IBOutlet UITextField *value2;
    id <SecondViewControllerDelegate> delegate;
}

@property (nonatomic, retain) UITextField *value1;
@property (nonatomic, retain) UITextField *value2;
@property (nonatomic,retain) NSString *nombre;
@property (nonatomic, retain) id <SecondViewControllerDelegate> delegate;

-(IBAction) add:(id)sender;
-(IBAction) multiply:(id)sender;


@end
