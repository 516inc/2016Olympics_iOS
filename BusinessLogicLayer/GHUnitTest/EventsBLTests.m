//
//  EventsBLTests.m
//  BusinessLogicLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "EventsBL.h"
#import "Schedule.h"
#import "EventsDAO.h"

@interface EventsBLTests : GHTestCase {}

@property (nonatomic,strong) EventsBL * bl;
@property (nonatomic,strong) Events * theEvents;

@end

@implementation EventsBLTests


- (void)setUpClass {
    
    //创建EventsBL对象
    self.bl = [[EventsBL alloc] init];
    //创建Events对象
    self.theEvents = [[Events alloc] init];
    self.theEvents.EventName = @"test EventName";
    self.theEvents.EventIcon = @"test EventIcon";
    self.theEvents.KeyInfo = @"test KeyInfo";
    self.theEvents.BasicsInfo = @"test BasicsInfo";
    self.theEvents.OlympicInfo = @"test OlympicInfo";
    
    //插入测试数据
    EventsDAO *dao = [EventsDAO sharedManager];
    [dao create:self.theEvents];
}

- (void)tearDownClass {
    
    //删除测试数据
    self.theEvents.EventID = 41;
    EventsDAO *dao = [EventsDAO sharedManager];
    [dao remove:self.theEvents];
    
    self.bl = nil;
}

- (void)setUp {}

- (void)tearDown { }

//测试 按照主键查询数据方法
-(void) testFindAll
{
    
    NSArray* list =  [self.bl readData];
    //断言 查询记录数为1
    GHAssertTrue([list count] == 41, @"查询记录数期望值为：41 实际值为：%i", [list count]);
    
    Events* resEvents  = list[40];
    //断言
    GHAssertEqualObjects(self.theEvents.EventName ,resEvents.EventName, @"比赛项目名测试失败");
    GHAssertEqualObjects(self.theEvents.EventIcon ,resEvents.EventIcon, @"比赛项目图标测试失败");
    GHAssertEqualObjects(self.theEvents.KeyInfo ,resEvents.KeyInfo, @"项目关键信息测试失败");
    GHAssertEqualObjects(self.theEvents.BasicsInfo ,resEvents.BasicsInfo, @"项目基本信息测试失败");
    GHAssertEqualObjects(self.theEvents.OlympicInfo ,resEvents.OlympicInfo, @"项目奥运会历史信息测试失败");
}

@end
