//
//  AboutViewController_iPad.m
//  2016Olympics
//
//  Created by tonyguan on 12-11-24.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "AboutViewController_iPad.h"

@interface AboutViewController_iPad ()

@end

@implementation AboutViewController_iPad



- (void)viewDidLoad
{
    [super viewDidLoad];

    //设定广告栏屏幕尺寸，实例化GADBannerView，
    self.bannerView = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    //设置应用发布者ID
    self.bannerView.adUnitID = kSampleAdUnitID;
    //设置委托
    self.bannerView.delegate = self;
    //设置广告栏的根视图控制器
    [self.bannerView setRootViewController:self];
    //竖屏情况下设置广告栏的位置
    self.bannerView.center = CGPointMake(self.view.center.x, kGADAdSizeBanner.size.height /2);
    [self.view addSubview:self.bannerView];
    //请求加载广告
    [self.bannerView loadRequest:[self createRequest]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}


// 创建广告请求
- (GADRequest *)createRequest {
    GADRequest *request = [GADRequest request];
    return request;
}


#pragma mark GbannerViewViewDelegate实现

//广告接收成功
- (void)adViewDidReceiveAd:(GADBannerView *)adView {
    NSLog(@"广告接收成功");
}
//广告接收失败
- (void)adView:(GADBannerView *)view didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"广告接收失败 %@", [error localizedFailureReason]);
    //重新请求加载广告
    [self.bannerView loadRequest:[self createRequest]];
}

@end
