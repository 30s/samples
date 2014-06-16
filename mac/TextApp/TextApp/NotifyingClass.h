//
//  NotifyingClass.h
//  TextApp
//
//  Created by Robert Zheng on 14-6-14.
//  Copyright (c) 2014年 mycabinet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotifyingClass : NSObject {
    IBOutlet NSTextView *textView;
}

- (IBAction)displaySomeText:(id)sender;

@end
