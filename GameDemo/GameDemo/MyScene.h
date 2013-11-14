//
//  MyScene.h
//  GameDemo
//

//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface MyScene : SKScene
@property (nonatomic,strong) SKSpriteNode *ship;
@property NSTimeInterval lastSpawnInterval;
@property NSTimeInterval lastUpdateInterval;

@end
