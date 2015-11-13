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



#import "MSOutlookModels.h"



/** Implementation for MSOutlookFileAttachment
 *
 */
@implementation MSOutlookFileAttachment


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"ContentId", @"contentId", @"ContentLocation", @"contentLocation", @"ContentBytes", @"contentBytes", @"IsContactPhoto", @"isContactPhoto", @"DateTimeLastModified", @"dateTimeLastModified", @"Name", @"name", @"ContentType", @"contentType", @"Size", @"size", @"IsInline", @"isInline", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.FileAttachment";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_contentId = [dic objectForKey: @"ContentId"] != nil ? [[dic objectForKey: @"ContentId"] copy] : _contentId;
		_contentLocation = [dic objectForKey: @"ContentLocation"] != nil ? [[dic objectForKey: @"ContentLocation"] copy] : _contentLocation;
		_contentBytes = [dic objectForKey: @"ContentBytes"] != nil ? [MSOrcObjectizer dataFromString:[dic objectForKey: @"ContentBytes"]] : _contentBytes;
		_isContactPhoto = [dic objectForKey: @"IsContactPhoto"] != nil ? [[dic objectForKey: @"IsContactPhoto"] boolValue] : _isContactPhoto;
		self.dateTimeLastModified = [dic objectForKey: @"DateTimeLastModified"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"DateTimeLastModified"]] : self.dateTimeLastModified;
		self.name = [dic objectForKey: @"Name"] != nil ? [[dic objectForKey: @"Name"] copy] : self.name;
		self.contentType = [dic objectForKey: @"ContentType"] != nil ? [[dic objectForKey: @"ContentType"] copy] : self.contentType;
		self.size = [dic objectForKey: @"Size"] != nil ? [[dic objectForKey: @"Size"] intValue] : self.size;
		self.isInline = [dic objectForKey: @"IsInline"] != nil ? [[dic objectForKey: @"IsInline"] boolValue] : self.isInline;
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.contentId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ContentId"];}
	{id curVal = [self.contentLocation copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ContentLocation"];}
	{id curVal = [MSOrcObjectizer stringFromData:self.contentBytes];if (curVal!=nil) [dic setValue: curVal forKey: @"ContentBytes"];}
	{[dic setValue: (self.isContactPhoto?@"true":@"false") forKey: @"IsContactPhoto"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.dateTimeLastModified];if (curVal!=nil) [dic setValue: curVal forKey: @"DateTimeLastModified"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Name"];}
	{id curVal = [self.contentType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ContentType"];}
	{[dic setValue: [NSNumber numberWithInt: self.size] forKey: @"Size"];}
	{[dic setValue: (self.isInline?@"true":@"false") forKey: @"IsInline"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.FileAttachment" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.contentId;
    if([self.updatedValues containsObject:@"ContentId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ContentId"];
            }
    }
	{id curVal = self.contentLocation;
    if([self.updatedValues containsObject:@"ContentLocation"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ContentLocation"];
            }
    }
	{id curVal = self.contentBytes;
    if([self.updatedValues containsObject:@"ContentBytes"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromData:curVal] forKey: @"ContentBytes"];
            }
    }
	{id curVal = self.isContactPhoto;
    if([self.updatedValues containsObject:@"IsContactPhoto"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsContactPhoto"];
            }
    }
	{id curVal = self.dateTimeLastModified;
    if([self.updatedValues containsObject:@"DateTimeLastModified"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"DateTimeLastModified"];
            }
    }
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"Name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Name"];
            }
    }
	{id curVal = self.contentType;
    if([self.updatedValues containsObject:@"ContentType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ContentType"];
            }
    }
	{id curVal = self.size;
    if([self.updatedValues containsObject:@"Size"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithInt: curVal] forKey: @"Size"];
            }
    }
	{id curVal = self.isInline;
    if([self.updatedValues containsObject:@"IsInline"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsInline"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
            }
    }
    return dic;
}


/** Setter implementation for property contentId
 *
 */
- (void) setContentId: (NSString *) value {
    _contentId = value;
    [self valueChangedFor:@"ContentId"];
}
       
/** Setter implementation for property contentLocation
 *
 */
- (void) setContentLocation: (NSString *) value {
    _contentLocation = value;
    [self valueChangedFor:@"ContentLocation"];
}
       
/** Setter implementation for property contentBytes
 *
 */
- (void) setContentBytes: (NSData *) value {
    _contentBytes = value;
    [self valueChangedFor:@"ContentBytes"];
}
       
/** Setter implementation for property isContactPhoto
 *
 */
- (void) setIsContactPhoto: (bool) value {
    _isContactPhoto = value;
    [self valueChangedFor:@"IsContactPhoto"];
}
       

@end