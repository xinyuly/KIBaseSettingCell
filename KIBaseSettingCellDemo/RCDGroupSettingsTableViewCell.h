//
//  RCDGroupSettingsTableViewCell.h
//  RCloudMessage
//
//  Created by Jue on 16/3/22.
//  Copyright © 2016年 RongCloud. All rights reserved.
//

#import "KIBaseSettingTableViewCell.h"
#import <UIKit/UIKit.h>
@class RCDGroupInfo;

@interface RCDGroupSettingsTableViewCell : KIBaseSettingTableViewCell

- (instancetype)initWithIndexPath:(NSIndexPath *)indexPath andGroupInfo:(RCDGroupInfo *)groupInfo;

@end
