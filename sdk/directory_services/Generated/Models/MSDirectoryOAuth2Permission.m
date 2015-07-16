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
#import "MSDirectoryModels.h"

/**
* The implementation file for type OAuth2Permission.
*/

@implementation MSDirectoryOAuth2Permission	

@synthesize odataType = _odataType;
@synthesize adminConsentDescription = _adminConsentDescription;
@synthesize adminConsentDisplayName = _adminConsentDisplayName;
@synthesize id = _id;
@synthesize isEnabled = _isEnabled;
@synthesize type = _type;
@synthesize userConsentDescription = _userConsentDescription;
@synthesize userConsentDisplayName = _userConsentDisplayName;
@synthesize value = _value;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.DirectoryServices.OAuth2Permission";
	}

	return self;
}

- (void)setAdminConsentDescription:(NSString *) adminConsentDescription {
    _adminConsentDescription = adminConsentDescription;
	[self valueChanged:adminConsentDescription forProperty:@"adminConsentDescription"];
}
    
- (void)setAdminConsentDisplayName:(NSString *) adminConsentDisplayName {
    _adminConsentDisplayName = adminConsentDisplayName;
	[self valueChanged:adminConsentDisplayName forProperty:@"adminConsentDisplayName"];
}
    
- (void)setId:(NSString *) id {
    _id = id;
	[self valueChanged:id forProperty:@"id"];
}
    
- (void)setIsEnabled:(BOOL ) isEnabled {
    _isEnabled = isEnabled;
    [self valueChangedForBool:isEnabled forProperty:@"isEnabled"];
}
    
- (void)setType:(NSString *) type {
    _type = type;
	[self valueChanged:type forProperty:@"type"];
}
    
- (void)setUserConsentDescription:(NSString *) userConsentDescription {
    _userConsentDescription = userConsentDescription;
	[self valueChanged:userConsentDescription forProperty:@"userConsentDescription"];
}
    
- (void)setUserConsentDisplayName:(NSString *) userConsentDisplayName {
    _userConsentDisplayName = userConsentDisplayName;
	[self valueChanged:userConsentDisplayName forProperty:@"userConsentDisplayName"];
}
    
- (void)setValue:(NSString *) value {
    _value = value;
	[self valueChanged:value forProperty:@"value"];
}
    
@end