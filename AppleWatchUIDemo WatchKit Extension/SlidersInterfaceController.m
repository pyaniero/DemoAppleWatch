//
//  SlidersInterfaceController.m
//  AppleWatchUIDemo
//
//  Created by Pablo Yaniero on 26/10/15.
//  Copyright © 2015 Pablo Yaniero. All rights reserved.
//

#import "SlidersInterfaceController.h"

@interface SlidersInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceSlider *valueSlider;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *valueLabel;

@end

@implementation SlidersInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.valueLabel setText:@"0"];
    [self.valueSlider setValue:0];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)sliderChanged:(float)value {
    [self.valueLabel setText:[NSString stringWithFormat:@"%.2f", value]];
}

@end



