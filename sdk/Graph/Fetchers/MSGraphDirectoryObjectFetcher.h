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



#ifndef MSGRAPHDIRECTORYOBJECTFETCHER_H
#define MSGRAPHDIRECTORYOBJECTFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphApplicationFetcher;	
@class MSGraphExtensionPropertyFetcher;	
@class MSGraphUserFetcher;	
@class MSGraphAppRoleAssignmentFetcher;	
@class MSGraphGroupFetcher;	
@class MSGraphOrgContactFetcher;	
@class MSGraphDeviceFetcher;	
@class MSGraphDeviceConfigurationFetcher;	
@class MSGraphDirectoryLinkChangeFetcher;	
@class MSGraphDirectoryRoleFetcher;	
@class MSGraphDirectoryRoleTemplateFetcher;	
@class MSGraphServicePrincipalFetcher;	
@class MSGraphTenantDetailFetcher;	
@class MSGraphDirectoryObjectOperations;


/** MSGraphDirectoryObjectFetcher
 *
 */
@interface MSGraphDirectoryObjectFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphDirectoryObjectOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphDirectoryObject *, MSOrcError *))callback;
- (void)update:(MSGraphDirectoryObject *)DirectoryObject callback:(void (^)(MSGraphDirectoryObject *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphDirectoryObjectFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphDirectoryObjectFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphDirectoryObjectFetcher *)select:(NSString *)params;
- (MSGraphDirectoryObjectFetcher *)expand:(NSString *)value;
- (MSGraphApplicationFetcher *)asApplication;	
- (MSGraphExtensionPropertyFetcher *)asExtensionProperty;	
- (MSGraphUserFetcher *)asUser;	
- (MSGraphAppRoleAssignmentFetcher *)asAppRoleAssignment;	
- (MSGraphGroupFetcher *)asGroup;	
- (MSGraphOrgContactFetcher *)asOrgContact;	
- (MSGraphDeviceFetcher *)asDevice;	
- (MSGraphDeviceConfigurationFetcher *)asDeviceConfiguration;	
- (MSGraphDirectoryLinkChangeFetcher *)asDirectoryLinkChange;	
- (MSGraphDirectoryRoleFetcher *)asDirectoryRole;	
- (MSGraphDirectoryRoleTemplateFetcher *)asDirectoryRoleTemplate;	
- (MSGraphServicePrincipalFetcher *)asServicePrincipal;	
- (MSGraphTenantDetailFetcher *)asTenantDetail;	

@end

#endif