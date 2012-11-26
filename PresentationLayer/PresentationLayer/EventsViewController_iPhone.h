//
//  EventsViewController_iPhone.h
//  PresentationLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventsViewCell.h"
#import "EventsBL.h"
#import "Events.h"
#import "EventsDetailViewController_iPhone.h"

#define  COL_COUNT 4

@interface EventsViewController_iPhone : UICollectionViewController

@property (strong, nonatomic) NSArray * events;

@end
