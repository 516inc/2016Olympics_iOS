//
//  EventsDetailViewController_iPhone.h
//  PresentationLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Events.h"

@interface EventsDetailViewController_iPhone : UIViewController

@property(nonatomic,strong) Events *event;

@property (weak, nonatomic) IBOutlet UILabel *lblEventName;
@property (weak, nonatomic) IBOutlet UIImageView *imgEventIcon;
@property (weak, nonatomic) IBOutlet UITextView *txtViewKeyInfo;
@property (weak, nonatomic) IBOutlet UITextView *txtViewBasicsInfo;
@property (weak, nonatomic) IBOutlet UITextView *txtViewOlympicInfo;


@end
