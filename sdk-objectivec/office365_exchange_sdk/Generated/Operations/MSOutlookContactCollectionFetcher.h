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

@class MSOutlookContactFetcher;
@class MSOutlookContactCollectionFetcher;

#import <orc_engine_core/orc_engine_core.h>
#import "MSOutlookModels.h"

/**
* The header for type MSOutlookContactCollectionFetcher.
*/

@protocol MSOutlookContactCollectionFetcherProtocol<MSOrcCollectionFetcher>

@optional

- (void)readWithCallback:(void (^)(NSArray<MSOutlookContact> *contacts, MSOrcError *error))callback;

- (MSOutlookContactCollectionFetcher *)select:(NSString *)params;
- (MSOutlookContactCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookContactCollectionFetcher *)search:(NSString *)params;
- (MSOutlookContactCollectionFetcher *)top:(int)value;
- (MSOutlookContactCollectionFetcher *)skip:(int)value;
- (MSOutlookContactCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookContactCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookContactCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookContactCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@required

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;
- (MSOutlookContactFetcher *)getById:(NSString *)Id;
- (void)add:(MSOutlookContact *)entity callback:(void (^)(MSOutlookContact *contact, MSOrcError *error))callback;

@end

@interface MSOutlookContactCollectionFetcher : MSOrcCollectionFetcher<MSOutlookContactCollectionFetcherProtocol>

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

@end