//
//  VBotRingtone.h
//  Copyright © 2020 VPMedia. All rights reserved.
//  Code based on https://github.com/petester42/swig/blob/master/Pod/Classes/Call/SWRingtone.h
//

#import <Foundation/Foundation.h>
@import AVFoundation;

@interface VBotRingtone : NSObject

/**
 *  Determine if the ringtone is already playing.
 */
@property (readonly, nonatomic) BOOL isPlaying;

/**
 *  Make the init unavailable.
 *
 *  @return compiler error.
 */
-(instancetype _Nonnull) init __attribute__((unavailable("init not available. Use initWithRingtonePath instead.")));

/**
 *  The init to set an own ringtone file.
 *
 *  @param ringtonePath Ringtone path.
 *
 *  @return VBotRingtone instance.
 */
- (instancetype _Nullable)initWithRingtonePath:(NSURL * _Nonnull)ringtonePath NS_DESIGNATED_INITIALIZER;

/**
 *  Start playing the ringtone.
 */
- (void)start;

/**
 *  Start playing the ringtone.
 */
- (void)startWithVibrate:(BOOL)vibrate;

/**
 *  Stop playing the ringtone.
 */
- (void)stop;

@end
