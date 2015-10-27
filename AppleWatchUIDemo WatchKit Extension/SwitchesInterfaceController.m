//
//  SwitchesInterfaceController.m
//  AppleWatchUIDemo
//
//  Created by Pablo Yaniero on 26/10/15.
//  Copyright © 2015 Pablo Yaniero. All rights reserved.
//

#import "SwitchesInterfaceController.h"

@interface SwitchesInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceSwitch *artSwitch;

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *responseLabel;
@end

@implementation SwitchesInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.responseLabel setHidden:YES];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)artSwitchChanged:(BOOL)value {
    
    if (value) {
        [self.responseLabel setText:@"I like Art. Any Kind of Art."];
        [self.responseLabel setHidden:NO];
    } else {
        [self.responseLabel setHidden:YES];
    }
}
@end



