//
//  AboutViewController_iPad.h
//  2016Olympics
//
//  Created by tonyguan on 12-11-24.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"

#define kSampleAdUnitID @"a14df1974738141"

@interface AboutViewController_iPad : UIViewController <GADBannerViewDelegate>

@property (strong, nonatomic) GADBannerView *bannerView;


- (GADRequest *)createRequest;

@end
