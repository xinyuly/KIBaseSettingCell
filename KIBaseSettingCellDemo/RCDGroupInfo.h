//
//  RCDGroupInfo.h
//  RCloudMessage
//
//  Created by 杜立召 on 15/3/19.
//  Copyright (c) 2015年 RongCloud. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RCDGroupInfo : NSObject 
/*!
 群组ID
 */
@property(nonatomic, strong) NSString *groupId;
/*!
 群组名称
 */
@property(nonatomic, strong) NSString *groupName;
/*!
 群组头像的URL
 */
@property(nonatomic, strong) NSString *portraitUri;

@end
