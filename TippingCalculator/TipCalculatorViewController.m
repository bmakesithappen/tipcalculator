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


- (void)viewDidLoad {
    
    [super viewDidLoad];
   // [self totalAmountTextDidChange:@""];
    
    self.title = @"Tip Calculator";
    self.view.backgroundColor = [UIColor whiteColor];

    
    self.totalAmountLabel = [UILabel new];
    self.totalAmountLabel.text = @"TotalAmount";
    self.totalAmountLabel.frame = CGRectMake(20, 40, self.view.bounds.size.width - 40,
                                        60);
    [self.view addSubview:self.totalAmountLabel];

    self.totalAmountTextField = [UITextField new];
    self.totalAmountTextField.frame = CGRectMake(20, 60, self.view.bounds.size.width - 40, 60);
    self.totalAmountTextField.keyboardType = UIKeyboardTypeDecimalPad;
    self.totalAmountTextField.placeholder = @"0.00";
    [self.totalAmountTextField addTarget:self
                                  action:@selector(totalAmountTextDidChange:)
                        forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:self.totalAmountTextField];
    
 
    self.totalAmountTipLabel = [UILabel new];
    self.totalAmountTipLabel.text = @"TotalTipAmount";
    self.totalAmountTipLabel.frame = CGRectMake(20, 80, self.view.bounds.size.width - 40,
                                             60);
    [self.view addSubview:self.totalAmountTipLabel];

    self.totalAmountTipTextField = [UITextField new];
    self.totalAmountTipTextField.frame = CGRectMake(20, 100, self.view.bounds.size.width - 40,  60);
    self.totalAmountTipTextField.keyboardType = UIKeyboardTypeDecimalPad; // this should change to just display numbers
    self.totalAmountTextField.placeholder = @"0.00";
    [self.view addSubview:self.totalAmountTipTextField];
    
    self.navigationItem.leftBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                    target:self
                                                    action:@selector
       (cancelButtonWasTapped:)];
    
    self.navigationItem.leftBarButtonItem.accessibilityLabel = @"cancel button";

    
    double totalWithoutTip = self.totalAmountTipTextField.text.doubleValue;
    
    self.totalAmountTipTextField.text = [NSString stringWithFormat:@"%0.2f",totalWithoutTip];
}


# pragma Actions // usually instance methods

- (void)cancelButtonWasTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)totalAmountTextDidChange:(id)sender {
    int x = 5;
    NSLog(@"Textfield (%@) changed to %@. Number 5: %d",
          self.totalAmountTextField,
          self.totalAmountTextField.text,
          x);

}

@end

