//
//  RestDomainListModel.m
//  iOSBlogReader
//
//  Created by everettjf on 16/4/8.
//  Copyright © 2016年 everettjf. All rights reserved.
//

#import "RestDomainListModel.h"

@implementation RestAspectModel
+ (NSDictionary*)modelCustomPropertyMapper{
    return @{@"oid":@"id"};
}
@end

@implementation RestDomainModel
+ (NSDictionary*)modelCustomPropertyMapper{
    return @{@"oid":@"id"};
}
+ (NSDictionary*)modelContainerPropertyGenericClass{
    return @{ @"aspect_set":RestAspectModel.class };
}
@end

@implementation RestDomainListModel
+ (NSDictionary*)modelContainerPropertyGenericClass{
    return @{ @"results":RestDomainModel.class };
}
@end
