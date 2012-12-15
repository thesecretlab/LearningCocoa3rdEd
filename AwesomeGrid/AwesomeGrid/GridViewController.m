//
//  GridViewController.m
//  AwesomeGrid
//
//  Created by Jon Manning on 7/10/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "GridViewController.h"

#import "GridCell.h"

@interface GridViewController () {
    NSArray* numbers;
}

@end

@implementation GridViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return numbers.count;
    
}

- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    GridCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GridCell" forIndexPath:indexPath];
    
    NSNumber* number = numbers[indexPath.row];
    
    cell.label.text = [number description];
    
    return cell;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray* numbersToAdd = [NSMutableArray array];
    
    for (int i = 1; i <= 200; i++) {
        [numbersToAdd addObject:@(i)];
    }
    
    numbers = numbersToAdd;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
