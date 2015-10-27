//
//  InterfaceController.m
//  AppleWatchUIDemo WatchKit Extension
//
//  Created by Pablo Yaniero on 26/10/15.
//  Copyright © 2015 Pablo Yaniero. All rights reserved.
//

#import "InterfaceController.h"
#import "SingleLabelTableRow.h"


@interface InterfaceController()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTable *optionsTable;
@property (nonatomic, strong) NSArray *typeObjectsArray;
@property (nonatomic, strong) NSArray *idTypeObjects;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    self.typeObjectsArray = @[@"Buttons", @"Slider", @"Labels", @"Switch", @"Images"];
    self.idTypeObjects = @[@"ButtonsIdentifier", @"SlidersIdentifier", @"LabelsIdentifier", @"SwitchesIdentifier", @"ImagesIdentifier"];
    
    [self configureTableWithData:self.typeObjectsArray];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)configureTableWithData:(NSArray*)dataObjects {
    [self.optionsTable setNumberOfRows:[dataObjects count] withRowType:@"SingleLabelTableRow"];
    for (NSInteger i = 0; i < self.optionsTable.numberOfRows; i++) {
        SingleLabelTableRow* row = [self.optionsTable rowControllerAtIndex:i];
        
        [row.titleLabel setText:dataObjects[i]];

    }
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    [self pushControllerWithName:self.idTypeObjects[rowIndex] context:nil];
}


@end



