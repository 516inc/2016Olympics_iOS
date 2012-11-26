//
//  BaseDAO.m
//  PersistenceLayer
//
//  Created by tonyguan on 12-11-21.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "BaseDAO.h"

@implementation BaseDAO

- (id)init
{
    self = [super init];
    if (self)
    {
        
        self.dbFilePath = [DBHelper applicationDocumentsDirectoryFile:DB_FILE_NAME];
        //初始化数据库
        DBHelper *dbhelper = [DBHelper new];
        [dbhelper initDB];
        
    }
    
    return self;
}

-(BOOL)openDB
{
    if (sqlite3_open([self.dbFilePath UTF8String], &db) != SQLITE_OK) {
		sqlite3_close(db);
		NSLog(@"数据库打开失败。");
        return false;
	}
    return true;
}

@end
