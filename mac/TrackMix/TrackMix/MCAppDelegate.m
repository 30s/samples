//
//  MCAppDelegate.m
//  TrackMix
//
//  Created by Robert Zheng on 14-2-8.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import "MCAppDelegate.h"
#import "MCTrack.h"

@implementation MCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    MCTrack *aTrack = [[MCTrack alloc] init];
    
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    NSLog(@"received a mute: message");
    [self.track setVolume:0.0];

    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    NSString *senderName = nil;
    
    if (sender == self.textField) {
        
        senderName = @"textField";
        
    }
    
    else {
        
        senderName = @"slider";
        
    }
    
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
    
    float newValue = [sender floatValue];
    
    [self.track setVolume:newValue];
    
    [self updateUserInterface];
}

- (void)updateUserInterface {
    float volume = [self.track volume];
    
    [self.textField setFloatValue:volume];
    
    [self.slider setFloatValue:volume];
    
}


@end
