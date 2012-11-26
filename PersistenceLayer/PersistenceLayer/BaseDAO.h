//
//  BaseDAO.h
//  PersistenceLayer
//
//  Created by tonyguan on 12-11-21.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"
#import "DBHelper.h"

@interface BaseDAO : NSObject
{
    sqlite3 *db;
}

//数据文件全路径
@property(nonatomic, strong) NSString* dbFilePath;


//打开SQLite数据库 true 打开成功 false 打开失败
-(BOOL)openDB;


@end
