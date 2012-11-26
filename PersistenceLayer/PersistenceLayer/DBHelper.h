//
//  DBHelper.h
//  PersistenceLayer
//
//  Created by tonyguan on 12-11-23.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface DBHelper : NSObject
{
    sqlite3 *db;
}

//获得沙箱Document目录下全路径
+ (NSString *)applicationDocumentsDirectoryFile :(NSString *)fileName;

//初始化并加载数据
-(void) initDB;

//从数据库获得当前数据库版本号
- (int) dbVersionNubmer;


@end
