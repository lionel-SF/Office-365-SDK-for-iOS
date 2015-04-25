/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

#import "MSGraphServiceODataEntities.h"

@implementation MSGraphServiceCalendarFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceCalendar class]]) {

		_operations = [[MSGraphServiceCalendarOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (NSURLSessionTask *)updateCalendar:(id)entity callback:(void (^)(MSGraphServiceCalendar *calendar, MSODataException *exception))callback {

	return [super updateEntity:entity callback:callback];
}

- (NSURLSessionTask *)deleteCalendar:(void (^)(int status, MSODataException *exception))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphServiceEventCollectionFetcher *)getCalendarView {

    return [[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSGraphServiceEvent class]];
}

- (id<MSGraphServiceEventFetcher>)getCalendarViewById:(NSString *)_id {

    return [[[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSGraphServiceEvent class]] getById:_id];
}

- (MSGraphServiceEventCollectionFetcher *)getEvents {

    return [[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSGraphServiceEvent class]];
}

- (id<MSGraphServiceEventFetcher>)getEventsById:(NSString *)_id {

    return [[[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSGraphServiceEvent class]] getById:_id];
}

@end