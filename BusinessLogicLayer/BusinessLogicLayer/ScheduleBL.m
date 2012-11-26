//
//  ScheduleBL.m
//  BusinessLogicLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "ScheduleBL.h"

@implementation ScheduleBL

//查询所用数据方法
-(NSMutableDictionary*) readData
{
    ScheduleDAO *scheduleDAO = [ScheduleDAO sharedManager];
    
    NSMutableArray* schedules  = [scheduleDAO findAll];
    NSMutableDictionary *resDict = [[NSMutableDictionary alloc] init];
    
    EventsDAO *eventsDAO = [EventsDAO sharedManager];
    
    //延迟加载Events数据
    for (Schedule *schedule in schedules) {
        Events *event = [eventsDAO findById:schedule.Event];
        schedule.Event = event;
        
        NSArray  *allkey = [resDict allKeys];
        
        //把NSMutableArray结构转化为NSMutableDictionary结构
        if([allkey containsObject:schedule.GameDate]) {
            NSMutableArray* value = [resDict objectForKey:schedule.GameDate];
             [value addObject:schedule];
            [resDict setObject:value forKey:schedule.GameDate];
        } else {
            
            NSMutableArray* value = [[NSMutableArray alloc] init];
            [value addObject:schedule];
            [resDict setObject:value forKey:schedule.GameDate];
        }
        
    }
    
    return resDict;
}


@end
