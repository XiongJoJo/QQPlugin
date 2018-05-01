//
//  QQPlugin.m
//  QQPlugin
//
//  Created by JoJo on 18/5/1.
//  Copyright © 2018年 JoJo. All rights reserved.
//

#import "QQPlugin.h"
#import "MQAIOSelfInfoViewController2+BusyStatus.h"
#import "MQAIOChatTootKitViewController+SendPicture.h"

@interface QQPlugin()

@end


@implementation QQPlugin

/**
 * @return the single static instance of the plugin object
 */
+ (instancetype)sharedInstance
{
    static QQPlugin *plugin = nil;
    @synchronized(self) {
        if (!plugin) {
            plugin = [[self alloc] init];
        }
    }
    return plugin;
}


/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void)load
{
    QQPlugin *plugin = [QQPlugin sharedInstance];
    NSLog(@"++++++++ %@ plugin loaded ++++++++", plugin);
    
    [NSClassFromString(@"MQAIOSelfInfoViewController2") busyStatus_MQAIOSelfInfoViewController2];
    [NSClassFromString(@"MQAIOChatTootKitViewController") sendPicture_MQAIOChatTootKitViewController];
}

@end
