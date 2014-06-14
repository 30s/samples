//
//  MCAppDelegate.h
//  coco
//
//  Created by Robert Zheng on 14-5-27.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <IOBluetooth/IOBluetooth.h>

@interface MCAppDelegate : NSObject <NSApplicationDelegate, CBCentralManagerDelegate>
{
    CBCentralManager *manager;
    CBPeripheral *peripheral;
}

@property (assign) IBOutlet NSWindow *window;

-(IBAction)scan:(id)sender;

@end
