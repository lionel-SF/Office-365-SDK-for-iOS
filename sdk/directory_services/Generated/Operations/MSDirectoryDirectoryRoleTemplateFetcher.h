/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/
@class MSDirectoryDirectoryRoleTemplateOperations;

#import <core/core.h>
#import "MSDirectoryModels.h"

/**
* The header for type MSDirectoryDirectoryRoleTemplateFetcher.
*/


@interface MSDirectoryDirectoryRoleTemplateFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSDirectoryDirectoryRoleTemplateOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSDirectoryDirectoryRoleTemplate *directoryRoleTemplate, MSOrcError *error))callback;
- (void)update:(MSDirectoryDirectoryRoleTemplate *)directoryRoleTemplate callback:(void(^)(MSDirectoryDirectoryRoleTemplate *directoryRoleTemplate, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSDirectoryDirectoryRoleTemplateFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSDirectoryDirectoryRoleTemplateFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSDirectoryDirectoryRoleTemplateFetcher *)select:(NSString *)params;
- (MSDirectoryDirectoryRoleTemplateFetcher *)expand:(NSString *)value;

@end