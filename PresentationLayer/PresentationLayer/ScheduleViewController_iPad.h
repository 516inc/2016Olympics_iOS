//
//  ScheduleViewController_iPad.h
//  2016Olympics
//
//  Created by tonyguan on 12-11-23.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Schedule.h"
#import "ScheduleBL.h"
#import "EventsDetailViewController_iPad.h"

@interface ScheduleViewController_iPad : UITableViewController

//表视图使用的数据
@property (strong, nonatomic) NSDictionary * data;
//比赛日期列表
@property (strong, nonatomic) NSArray * arrayGameDateList;


@end
