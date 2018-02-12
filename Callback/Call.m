//
//  Call.m
//  Callback
//
//  Created by Eduardo Vital Alencar Cunha on 24/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import "Call.h"

@implementation Call

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self createTimerToLog];
        [self initializeObserverTimezone];
    }
    return self;
}

-(void)initializeObserverTimezone
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(changedTimezone:)
                                                 name:NSSystemTimeZoneDidChangeNotification
                                               object:nil];

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(changedClock:)
                                                 name:NSSystemClockDidChangeNotification
                                               object:nil];
}

-(void) createTimerToLog
{
    [NSTimer scheduledTimerWithTimeInterval:1.0
                            target:self
                          selector:@selector(logAfterOneSecond)
                          userInfo:nil
                           repeats:YES];
}

-(void) changedClock: (NSNotification *) notification
{
    NSLog(@"%@", notification);
}

-(void) changedTimezone: (NSNotification *) notification
{
    NSLog(@"Mudou fuso horário!!!");
    NSLog(@"%@", notification);
}

-(void)logAfterOneSecond
{
    NSLog(@"1 segundo passou!");
}

- (void)dealloc
{
    NSLog(@"Morreu");
}

@end
