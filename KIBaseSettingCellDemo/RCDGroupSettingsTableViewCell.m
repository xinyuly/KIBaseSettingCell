//
//  RCDGroupSettingsTableViewCell.m
//  RCloudMessage
//
//  Created by Jue on 16/3/22.
//  Copyright © 2016年 RongCloud. All rights reserved.
//

#import "RCDGroupSettingsTableViewCell.h"
#import "RCDGroupInfo.h"

@implementation RCDGroupSettingsTableViewCell

- (instancetype)initWithIndexPath:(NSIndexPath *)indexPath andGroupInfo:(RCDGroupInfo *)groupInfo {
    //带右边图片的cell
    if (indexPath.section == 1 && indexPath.row == 0) {
        self = [super initWithLeftImageStr:nil
                             leftImageSize:CGSizeZero
                              rightImaeStr:@"default_discussion_portrait"
                            rightImageSize:CGSizeMake(25, 25)];
    }
    //一般cell
    else {
        self = [super init];
    }
    [self initSubviewsWithIndexPath:indexPath andGroupInfo:groupInfo];
    return self;
}

- (void)initSubviewsWithIndexPath:(NSIndexPath *)indexPath andGroupInfo:(RCDGroupInfo *)groupInfo {
    if (indexPath.section == 0) {
        [self setCellStyle:DefaultStyle];
        self.leftLabel.text = @"全部群成员";
    } else if (indexPath.section == 1) {
        switch (indexPath.row) {
        case 0: {
            [self setCellStyle:DefaultStyle];
            self.leftLabel.text = @"群聊头像";
        } break;
        case 1:
            [self setCellStyle:DefaultStyle_RightLabel];
            self.leftLabel.text = @"群公告";
            self.rightLabel.text = @"红包群";
            break;
        case 2:
            [self setCellStyle:DefaultStyle];
            self.leftLabel.text = @"群公告";
            break;
        case 3:
            [self setCellStyle:DefaultStyle_RightLabel];
            self.leftLabel.text = @"我在本群的昵称";
            self.rightLabel.text = @"我是XXX";
            break;
        default:
            break;
        }
    } else if (indexPath.section == 2) {
        [self setCellStyle:DefaultStyle];
        self.leftLabel.text = @"查找聊天记录";
    } else {
        switch (indexPath.row) {
        case 0:
            [self setCellStyle:SwitchStyle];
            self.leftLabel.text = @"消息免打扰";
            break;
        case 1:
            [self setCellStyle:SwitchStyle];
            self.leftLabel.text = @"聊天置顶";
            break;
        case 2:
            [self setCellStyle:DefaultStyle];
            self.leftLabel.text = @"清除聊天记录";
            break;
        default:
            break;
        }
    }
}

@end
