//
//  main.m
//  FBProfiler
//
//  Created by 郑锐 on 2019/12/2.
//  Copyright © 2019 郑锐. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#if DEBUG
#import <FBAllocationTracker.h>
#import <FBAssociationManager.h>
#endif

int main(int argc, char * argv[]) {
    @autoreleasepool {
#if DEBUG
        [FBAssociationManager hook];
        [[FBAllocationTrackerManager sharedManager] startTrackingAllocations];
        [[FBAllocationTrackerManager sharedManager] enableGenerations];
#endif
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
