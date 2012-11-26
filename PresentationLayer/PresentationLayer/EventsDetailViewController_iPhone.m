//
//  EventsDetailViewController_iPhone.m
//  PresentationLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "EventsDetailViewController_iPhone.h"

@interface EventsDetailViewController_iPhone ()

@end

@implementation EventsDetailViewController_iPhone


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.imgEventIcon.image = [UIImage imageNamed:self.event.EventIcon];
    
    self.lblEventName.text = self.event.EventName;
    self.txtViewBasicsInfo.text = self.event.BasicsInfo;
    self.txtViewKeyInfo.text = self.event.KeyInfo;
    self.txtViewOlympicInfo.text = self.event.OlympicInfo;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
