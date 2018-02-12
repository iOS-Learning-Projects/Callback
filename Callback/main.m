//
//  main.m
//  Callback
//
//  Created by Eduardo Vital Alencar Cunha on 24/03/17.
//  Copyright © 2017 Vital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Call.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Call *call = [[Call alloc]init];
        [[NSRunLoop currentRunLoop]run];
    }
    return 0;
}
