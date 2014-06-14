//
//  MCAppDelegate.m
//  coco
//
//  Created by Robert Zheng on 14-5-27.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import "MCAppDelegate.h"

@implementation MCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
}

-(IBAction)scan:(id)sender
{
    NSLog(@"scan");
    [manager scanForPeripheralsWithServices:nil options:nil];
}

- (void) centralManagerDidUpdateState:(CBCentralManager *)central
{
    NSLog(@"did update state");
}

- (void) centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)aPeripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI
{
    NSLog(@"discover");
}

@end
