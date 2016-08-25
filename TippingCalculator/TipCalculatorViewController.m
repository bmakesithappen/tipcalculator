//
//  ViewController.m
//  TippingCalculator
//
//  Created by Bernard Desert on 08/23/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "TipCalculatorViewController.h"

// static CGFloat const ButtonDiameter = 80; // Global Naming?? Why

@interface TipCalculatorViewController ()

@property (nonatomic,assign) double tipCalculated;
@property (nonatomic,strong) UILabel *totalAmountLabel;
@property (nonatomic,strong) UITextField *totalAmountTextField;
@property (nonatomic,strong) UILabel *totalAmountTipLabel;
@property (nonatomic,strong) UITextField *totalAmountTipTextField;

@end


@implementation TipCalculatorViewController


#pragma ViewLifeCylce

// why is not showing
// find a UIKit cancel / clear fields button
// are the self.titles right
// adding title for Navigation " Tip Calculator "


- (void)viewDidLoad {
    [super viewDidLoad];
    
 //   self.navigationItem.titleView =
    
    self.totalAmountLabel = [UILabel new];
    self.title = @"TotalAmount";
    self.totalAmountLabel.frame = CGRectMake(20, 40, self.view.bounds.size.width - 40, // width
                                        60); // height
    self.totalAmountTextField.keyboardType = UIKeyboardTypeDecimalPad;
    [self.view addSubview:self.totalAmountTipTextField];
    
    // adjust CGRectMake
    
    self.totalAmountTipLabel = [UILabel new];
    self.title = @"TotalTipAmount";
    self.totalAmountTipLabel.frame = CGRectMake(20, 40, self.view.bounds.size.width - 80, // width
                                             120); // height
    self.totalAmountTipTextField.keyboardType = UIKeyboardTypeDecimalPad; // this should change to just display numbers
    [self.view addSubview:self.totalAmountTipTextField];
    

    
/*   Change to be a cancel clear values button
 
 self.navigationItem.leftBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                    target:self
                                                    action:@selector
       (cancelButtonWasTapped:)];
    
    self.navigationItem.leftBarButtonItem.accessibilityLabel = @"cancel button";

 */
    
# pragma Actions 
    
    // define tipcalculated
    
}

@end

