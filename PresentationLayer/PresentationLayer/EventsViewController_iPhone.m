//
//  EventsViewController.m
//  PresentationLayer
//
//  Created by tonyguan on 12-11-22.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "EventsViewController_iPhone.h"

@implementation EventsViewController_iPhone


- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(void)viewWillAppear:(BOOL)animated
{
    if (self.events == nil || [self.events count] == 0) {
        EventsBL* bl = [[EventsBL alloc] init];
        //获取全部数据
        NSMutableArray *array = [bl readData];
        self.events = array;        
        [self.collectionView reloadData];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [self.events count] / COL_COUNT;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return COL_COUNT;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    EventsViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    Events *event = [self.events objectAtIndex:(indexPath.section * COL_COUNT + indexPath.row)];
    cell.imageView.image = [UIImage imageNamed:event.EventIcon];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        NSIndexPath *indexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
        Events *event = [self.events objectAtIndex:(indexPath.section * COL_COUNT + indexPath.row)];
        EventsDetailViewController_iPhone *detailVC = [segue destinationViewController];
        detailVC.event = event;
        
    }
}

@end
