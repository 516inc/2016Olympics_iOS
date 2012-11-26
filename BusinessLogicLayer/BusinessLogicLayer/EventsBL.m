//
//  EventsBL.m
//  BusinessLogicLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "EventsBL.h"

@implementation EventsBL

//查询所用数据方法
-(NSMutableArray*) readData
{
    EventsDAO *dao = [EventsDAO sharedManager];
    
    NSMutableArray* list  = [dao findAll];
    
    return list;
}

@end
