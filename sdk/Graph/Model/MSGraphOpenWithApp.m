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



#import "MSGraphModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphOpenWithApp
 *
 */
@implementation MSGraphOpenWithApp


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"app", @"app", @"viewUrl", @"viewUrl", @"editUrl", @"editUrl", @"viewPostParameters", @"viewPostParameters", @"editPostParameters", @"editPostParameters", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.openWithApp";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_app = [dic objectForKey: @"app"] != nil ? [[MSGraphIdentity alloc] initWithDictionary: [dic objectForKey: @"app"]] : _app;
		_viewUrl = [dic objectForKey: @"viewUrl"] != nil ? [[dic objectForKey: @"viewUrl"] copy] : _viewUrl;
		_editUrl = [dic objectForKey: @"editUrl"] != nil ? [[dic objectForKey: @"editUrl"] copy] : _editUrl;
		_viewPostParameters = [dic objectForKey: @"viewPostParameters"] != nil ? [[dic objectForKey: @"viewPostParameters"] copy] : _viewPostParameters;
		_editPostParameters = [dic objectForKey: @"editPostParameters"] != nil ? [[dic objectForKey: @"editPostParameters"] copy] : _editPostParameters;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.app toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"app"];}
	{id curVal = [self.viewUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"viewUrl"];}
	{id curVal = [self.editUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"editUrl"];}
	{id curVal = [self.viewPostParameters copy];if (curVal!=nil) [dic setValue: curVal forKey: @"viewPostParameters"];}
	{id curVal = [self.editPostParameters copy];if (curVal!=nil) [dic setValue: curVal forKey: @"editPostParameters"];}
    [dic setValue: @"#microsoft.graph.openWithApp" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.app;
    if([self.updatedValues containsObject:@"app"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"app"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"app"];
            }
        
            }}
	{id curVal = self.viewUrl;
    if([self.updatedValues containsObject:@"viewUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"viewUrl"];
            }
    }
	{id curVal = self.editUrl;
    if([self.updatedValues containsObject:@"editUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"editUrl"];
            }
    }
	{id curVal = self.viewPostParameters;
    if([self.updatedValues containsObject:@"viewPostParameters"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"viewPostParameters"];
            }
    }
	{id curVal = self.editPostParameters;
    if([self.updatedValues containsObject:@"editPostParameters"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"editPostParameters"];
            }
    }
    return dic;
}


/** Setter implementation for property app
 *
 */
- (void) setApp: (MSGraphIdentity *) value {
    _app = value;
    [self valueChangedFor:@"app"];
}
       
/** Setter implementation for property viewUrl
 *
 */
- (void) setViewUrl: (NSString *) value {
    _viewUrl = value;
    [self valueChangedFor:@"viewUrl"];
}
       
/** Setter implementation for property editUrl
 *
 */
- (void) setEditUrl: (NSString *) value {
    _editUrl = value;
    [self valueChangedFor:@"editUrl"];
}
       
/** Setter implementation for property viewPostParameters
 *
 */
- (void) setViewPostParameters: (NSString *) value {
    _viewPostParameters = value;
    [self valueChangedFor:@"viewPostParameters"];
}
       
/** Setter implementation for property editPostParameters
 *
 */
- (void) setEditPostParameters: (NSString *) value {
    _editPostParameters = value;
    [self valueChangedFor:@"editPostParameters"];
}
       

@end