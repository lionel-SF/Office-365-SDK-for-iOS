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

#import "MSOutlookOrcEntities.h"

@implementation MSOutlookEntityFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOutlookEntity class]]) {

		_operations = [[MSOutlookEntityOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOutlookEntity *entity, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOutlookAttachmentFetcher *)asAttachment {

	return [[MSOutlookAttachmentFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookAttachment class]];
}

- (MSOutlookItemFetcher *)asItem {

	return [[MSOutlookItemFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookItem class]];
}

- (MSOutlookUserFetcher *)asUser {

	return [[MSOutlookUserFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookUser class]];
}

- (MSOutlookFolderFetcher *)asFolder {

	return [[MSOutlookFolderFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookFolder class]];
}

- (MSOutlookCalendarFetcher *)asCalendar {

	return [[MSOutlookCalendarFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookCalendar class]];
}

- (MSOutlookCalendarGroupFetcher *)asCalendarGroup {

	return [[MSOutlookCalendarGroupFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookCalendarGroup class]];
}

- (MSOutlookContactFolderFetcher *)asContactFolder {

	return [[MSOutlookContactFolderFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookContactFolder class]];
}

@end