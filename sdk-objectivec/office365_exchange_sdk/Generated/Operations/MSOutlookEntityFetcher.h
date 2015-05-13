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

@class MSOutlookAttachmentFetcher;
@class MSOutlookItemFetcher;
@class MSOutlookUserFetcher;
@class MSOutlookFolderFetcher;
@class MSOutlookCalendarFetcher;
@class MSOutlookCalendarGroupFetcher;
@class MSOutlookContactFolderFetcher;
@class MSOutlookEntityOperations;
@class MSOutlookEntityFetcher;

#import <orc_engine_core/orc_engine_core.h>
#import "MSOutlookModels.h"

/**
* The header for type MSOutlookEntityFetcher.
*/

@protocol MSOutlookEntityFetcherProtocol<MSOrcEntityFetcher>

@optional

- (void) readWithCallback:(void (^)(MSOutlookEntity *entity, MSOrcError *error))callback;
- (MSOutlookEntityFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookEntityFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookEntityFetcher *)select:(NSString *)params;
- (MSOutlookEntityFetcher *)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSOutlookEntityOperations *operations;

@end

@interface MSOutlookEntityFetcher : MSOrcEntityFetcher<MSOutlookEntityFetcherProtocol>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)update:(MSOutlookEntity *)entity callback:(void(^)(MSOutlookEntity *entity, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;

- (MSOutlookAttachmentFetcher *)asAttachment;	
- (MSOutlookItemFetcher *)asItem;	
- (MSOutlookUserFetcher *)asUser;	
- (MSOutlookFolderFetcher *)asFolder;	
- (MSOutlookCalendarFetcher *)asCalendar;	
- (MSOutlookCalendarGroupFetcher *)asCalendarGroup;	
- (MSOutlookContactFolderFetcher *)asContactFolder;	

@end