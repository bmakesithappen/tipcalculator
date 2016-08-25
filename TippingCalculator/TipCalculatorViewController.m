//
//  ViewController.m
//  TippingCalculator
//
//  Created by Bernard Desert on 08/23/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "TipCalculatorViewController.h"

static CGFloat const ButtonDiameter = 80; // Global Naming?? Why

@interface TipCalculatorViewController ()


@property (nonatomic, strong) NSMutableArray *buttons;

@property (nonatomic,assign) NSInteger tipCalculated; // should it be an NSObject want to use this hold equation and displaying amount
@property (nonatomic,assign) NSInteger numberOFButtons;
@property (nonatomic,assign) NSInteger lastTappedNumber;// change this to something else to hold digits tapped

@end


@implementation TipCalculatorViewController


#pragma ViewLifeCylce

// must show buttons to tap, number total , button to give tip amount and back button
// can cancel button serve to purposes go back and clear 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.buttons = [[NSMutableArray alloc] init];  // instantiate
    self.lastTappedNumber = 0;
    self.numberOFButtons = 10;
    [self createButtons];
    
    
/*    self.navigationItem.rightBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                    target:self
                                                    action:@selector
       (addButtonWasTapped:)];
    
    self.navigationItem.rightBarButtonItem.accessibilityLabel = @"add button";
    
    
    self.navigationItem.leftBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                    target:self
                                                    action:@selector
       (cancelButtonWasTapped:)];
    
    self.navigationItem.leftBarButtonItem.accessibilityLabel = @"cancel button";

 */
    
}

#pragma Private 

// change to list the set of numbers in the order I want them
// need to add in from pragma actions


- (void)createButtons {
    
    for (int i = 0; i < self.numberOFButtons; i++) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero];
        [button setBackgroundColor:[UIColor redColor]];
        button.layer.cornerRadius = ButtonDiameter / 2;
        button.layer.borderColor = [UIColor whiteColor].CGColor;
        button.layer.borderWidth = 2.0;
        
        int buttonNumber = i + 1;
        button.tag = buttonNumber;
        
        [button setTitle:[@(buttonNumber) stringValue]
                forState:UIControlStateNormal];
        
        [button addTarget:self
                   action:@selector(buttonWasTapped:)
         forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:button];
        [self.buttons addObject:button];
}
    
}

#pragma Actions 

// need to add saving numbers tapped, completeing adding numbers to equate 20%

- (void)buttonWasTapped:(UIButton*)sender {
        NSLog(@"Number %ld was pressed",(long)sender.tag);
        
        if ((self.lastTappedNumber +1) == sender.tag) {
            self.lastTappedNumber++;
            sender.hidden = YES;
            
            if (sender.tag == self.numberOFButtons) {
                self.view.backgroundColor = [UIColor greenColor];
            }
 /*   }
        else {
            [self randomizedButtonPositions];
            self.lastTappedNumber = 0;
            
            for (UIButton *button in self.buttons) {
                button.hidden = NO;
            }

*/
            
//         - (void)cancelButtonWasTapped:(id)sender {
//            [self dismissViewControllerAnimated:YES completion:nil];

}
    
}

@end

