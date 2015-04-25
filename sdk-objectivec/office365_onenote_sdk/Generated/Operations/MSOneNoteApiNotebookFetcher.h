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

@class MSOneNoteApiSectionFetcher;
@class MSOneNoteApiSectionCollectionFetcher;
@class MSOneNoteApiSectionGroupFetcher;
@class MSOneNoteApiSectionGroupCollectionFetcher;
@class MSOneNoteApiNotebookOperations;

#import <office365_odata_base/office365_odata_base.h>
#import "MSOneNoteApiModels.h"

/**
* The header for type MSOneNoteApiNotebookFetcher.
*/

@protocol MSOneNoteApiNotebookFetcher<MSODataEntityFetcher, MSODataMultipartCollectionFetcher>

@optional

- (NSURLSessionTask *) readWithCallback:(void (^)(MSOneNoteApiNotebook *notebook, MSODataException *exception))callback;
- (id<MSOneNoteApiNotebookFetcher>)addCustomParametersWithName:(NSString *)name value:(id)value;
- (id<MSOneNoteApiNotebookFetcher>)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (id<MSOneNoteApiNotebookFetcher>)select:(NSString *)params;
- (id<MSOneNoteApiNotebookFetcher>)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSOneNoteApiNotebookOperations *operations;

- (MSOneNoteApiSectionCollectionFetcher *)getsections;
- (MSOneNoteApiSectionFetcher *) getsectionsById:(NSString*)_id;
- (MSOneNoteApiSectionGroupCollectionFetcher *)getsectionGroups;
- (MSOneNoteApiSectionGroupFetcher *) getsectionGroupsById:(NSString*)_id;

@end

@interface MSOneNoteApiNotebookFetcher : MSODataEntityFetcher<MSOneNoteApiNotebookFetcher>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSODataExecutable>)parent;
- (NSURLSessionTask *) updateNotebook:(MSOneNoteApiNotebook *)notebook callback:(void (^)(MSOneNoteApiNotebook *notebook, MSODataException *error))callback;
- (NSURLSessionTask *) deleteNotebook:(void (^)(int status, MSODataException *exception))callback;

@end