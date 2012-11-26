//
//  ScheduleDAO.h
//  PersistenceLayer
//
//  Created by tonyguan on 12-11-21.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDAO.h"
#import "Schedule.h"
#import "Events.h"
#import "ScheduleDAO.h"

//比赛日程表 数据访问对象类
@interface ScheduleDAO : BaseDAO

+ (ScheduleDAO*)sharedManager;

//插入Note方法
-(int) create:(Schedule*)model;

//删除Note方法
-(int) remove:(Schedule*)model;

//修改Note方法
-(int) modify:(Schedule*)model;

//查询所有数据方法
-(NSMutableArray*) findAll;

//按照主键查询数据方法
-(Schedule*) findById:(Schedule*)model;

@end
