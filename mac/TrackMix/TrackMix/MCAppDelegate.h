//
//  MCAppDelegate.h
//  TrackMix
//
//  Created by Robert Zheng on 14-2-8.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MCTrack;

@interface MCAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)updateUserInterface;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) MCTrack *track;

@end
