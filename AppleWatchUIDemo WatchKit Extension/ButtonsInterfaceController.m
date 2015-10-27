//
//  ButtonsInterfaceController.m
//  AppleWatchUIDemo
//
//  Created by Pablo Yaniero on 26/10/15.
//  Copyright © 2015 Pablo Yaniero. All rights reserved.
//

#import "ButtonsInterfaceController.h"

@interface ButtonsInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *showMoreButton;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *groupButton;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *showEvenMoreButton;

@end

@implementation ButtonsInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.showEvenMoreButton setHidden:YES];
    [self.groupButton setHidden:YES];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)groupPressed {
    [self popController];
}

- (IBAction)showMorePressed {
    [self.showEvenMoreButton setHidden:NO];
}

- (IBAction)showEvenMorePressed {
    [self.groupButton setHidden:NO];
}

@end



