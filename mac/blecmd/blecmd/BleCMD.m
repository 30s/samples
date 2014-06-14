//
//  BleCMD.m
//  blecmd
//
//  Created by Robert Zheng on 14-5-27.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import "BleCMD.h"

@implementation BleCMD

- (void)centralManagerDidUpdateState:(CBCentralManager *)central
{
    NSLog(@"state changed");
}

- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI
{
    NSLog(@"discover");
}

@end
