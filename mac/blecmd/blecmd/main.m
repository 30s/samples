//
//  main.m
//  blecmd
//
//  Created by Robert Zheng on 14-5-27.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>
#import "BleCMD.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        BleCMD *bc = [[BleCMD alloc] init];
        CBCentralManager *myCentralManager = [[CBCentralManager alloc] initWithDelegate:bc queue:nil];
        [myCentralManager scanForPeripheralsWithServices:nil options:nil];
        
        int abc;
        scanf("%i", &abc);
    }
    return 0;
}

