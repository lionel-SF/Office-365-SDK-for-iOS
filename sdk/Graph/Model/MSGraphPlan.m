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



/** Implementation for MSGraphPlan
 *
 */
@implementation MSGraphPlan


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"createdBy", @"createdBy", @"owner", @"owner", @"title", @"title", @"id", @"_id", @"tasks", @"tasks", @"buckets", @"buckets", @"details", @"details", @"assignedToTaskBoard", @"assignedToTaskBoard", @"progressTaskBoard", @"progressTaskBoard", @"bucketTaskBoard", @"bucketTaskBoard", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.plan";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_createdBy = [dic objectForKey: @"createdBy"] != nil ? [[dic objectForKey: @"createdBy"] copy] : _createdBy;
		_owner = [dic objectForKey: @"owner"] != nil ? [[dic objectForKey: @"owner"] copy] : _owner;
		_title = [dic objectForKey: @"title"] != nil ? [[dic objectForKey: @"title"] copy] : _title;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;

        if([dic objectForKey: @"tasks"] != [NSNull null]){
            _tasks = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"tasks"]) {
                [_tasks addObject:[[MSGraphTask alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_tasks resetChangedFlag];
        }
        

        if([dic objectForKey: @"buckets"] != [NSNull null]){
            _buckets = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"buckets"]) {
                [_buckets addObject:[[MSGraphBucket alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_buckets resetChangedFlag];
        }
        
		_details = [dic objectForKey: @"details"] != nil ? [[MSGraphPlanDetails alloc] initWithDictionary: [dic objectForKey: @"details"]] : _details;
		_assignedToTaskBoard = [dic objectForKey: @"assignedToTaskBoard"] != nil ? [[MSGraphPlanTaskBoard alloc] initWithDictionary: [dic objectForKey: @"assignedToTaskBoard"]] : _assignedToTaskBoard;
		_progressTaskBoard = [dic objectForKey: @"progressTaskBoard"] != nil ? [[MSGraphPlanTaskBoard alloc] initWithDictionary: [dic objectForKey: @"progressTaskBoard"]] : _progressTaskBoard;
		_bucketTaskBoard = [dic objectForKey: @"bucketTaskBoard"] != nil ? [[MSGraphPlanTaskBoard alloc] initWithDictionary: [dic objectForKey: @"bucketTaskBoard"]] : _bucketTaskBoard;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.createdBy copy];if (curVal!=nil) [dic setValue: curVal forKey: @"createdBy"];}
	{id curVal = [self.owner copy];if (curVal!=nil) [dic setValue: curVal forKey: @"owner"];}
	{id curVal = [self.title copy];if (curVal!=nil) [dic setValue: curVal forKey: @"title"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.tasks) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.buckets) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
	{id curVal = [self.details toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"details"];}
	{id curVal = [self.assignedToTaskBoard toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"assignedToTaskBoard"];}
	{id curVal = [self.progressTaskBoard toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"progressTaskBoard"];}
	{id curVal = [self.bucketTaskBoard toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"bucketTaskBoard"];}
    [dic setValue: @"#microsoft.graph.plan" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.createdBy;
    if([self.updatedValues containsObject:@"createdBy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"createdBy"];
            }
    }
	{id curVal = self.owner;
    if([self.updatedValues containsObject:@"owner"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"owner"];
            }
    }
	{id curVal = self.title;
    if([self.updatedValues containsObject:@"title"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"title"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
	{id curVal = self.tasks;
    if([self.updatedValues containsObject:@"tasks"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"tasks"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.tasks) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"tasks"];
        }
        
            }}
	{id curVal = self.buckets;
    if([self.updatedValues containsObject:@"buckets"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"buckets"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.buckets) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"buckets"];
        }
        
            }}
	{id curVal = self.details;
    if([self.updatedValues containsObject:@"details"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"details"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"details"];
            }
        
            }}
	{id curVal = self.assignedToTaskBoard;
    if([self.updatedValues containsObject:@"assignedToTaskBoard"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"assignedToTaskBoard"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"assignedToTaskBoard"];
            }
        
            }}
	{id curVal = self.progressTaskBoard;
    if([self.updatedValues containsObject:@"progressTaskBoard"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"progressTaskBoard"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"progressTaskBoard"];
            }
        
            }}
	{id curVal = self.bucketTaskBoard;
    if([self.updatedValues containsObject:@"bucketTaskBoard"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"bucketTaskBoard"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"bucketTaskBoard"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property createdBy
 *
 */
- (void) setCreatedBy: (NSString *) value {
    _createdBy = value;
    [self valueChangedFor:@"createdBy"];
}
       
/** Setter implementation for property owner
 *
 */
- (void) setOwner: (NSString *) value {
    _owner = value;
    [self valueChangedFor:@"owner"];
}
       
/** Setter implementation for property title
 *
 */
- (void) setTitle: (NSString *) value {
    _title = value;
    [self valueChangedFor:@"title"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property tasks
 *
 */
- (void) setTasks: (NSMutableArray *) value {
    _tasks = value;
    [self valueChangedFor:@"tasks"];
}
       
/** Setter implementation for property buckets
 *
 */
- (void) setBuckets: (NSMutableArray *) value {
    _buckets = value;
    [self valueChangedFor:@"buckets"];
}
       
/** Setter implementation for property details
 *
 */
- (void) setDetails: (MSGraphPlanDetails *) value {
    _details = value;
    [self valueChangedFor:@"details"];
}
       
/** Setter implementation for property assignedToTaskBoard
 *
 */
- (void) setAssignedToTaskBoard: (MSGraphPlanTaskBoard *) value {
    _assignedToTaskBoard = value;
    [self valueChangedFor:@"assignedToTaskBoard"];
}
       
/** Setter implementation for property progressTaskBoard
 *
 */
- (void) setProgressTaskBoard: (MSGraphPlanTaskBoard *) value {
    _progressTaskBoard = value;
    [self valueChangedFor:@"progressTaskBoard"];
}
       
/** Setter implementation for property bucketTaskBoard
 *
 */
- (void) setBucketTaskBoard: (MSGraphPlanTaskBoard *) value {
    _bucketTaskBoard = value;
    [self valueChangedFor:@"bucketTaskBoard"];
}
       

@end