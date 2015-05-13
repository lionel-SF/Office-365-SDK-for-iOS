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

@class MSOutlookEventMessageFetcher;
@class MSOutlookEventMessageCollectionFetcher;

#import <orc_engine_core/orc_engine_core.h>
#import "MSOutlookModels.h"

/**
* The header for type MSOutlookEventMessageCollectionFetcher.
*/

@protocol MSOutlookEventMessageCollectionFetcherProtocol<MSOrcCollectionFetcher>

@optional

- (void)readWithCallback:(void (^)(NSArray<MSOutlookEventMessage> *eventMessages, MSOrcError *error))callback;

- (MSOutlookEventMessageCollectionFetcher *)select:(NSString *)params;
- (MSOutlookEventMessageCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookEventMessageCollectionFetcher *)search:(NSString *)params;
- (MSOutlookEventMessageCollectionFetcher *)top:(int)value;
- (MSOutlookEventMessageCollectionFetcher *)skip:(int)value;
- (MSOutlookEventMessageCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookEventMessageCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookEventMessageCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookEventMessageCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@required

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;
- (MSOutlookEventMessageFetcher *)getById:(NSString *)Id;
- (void)add:(MSOutlookEventMessage *)entity callback:(void (^)(MSOutlookEventMessage *eventMessage, MSOrcError *error))callback;

@end

@interface MSOutlookEventMessageCollectionFetcher : MSOrcCollectionFetcher<MSOutlookEventMessageCollectionFetcherProtocol>

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

@end