//
//  FaceManager.h
//  PoliceSketch
//
//  Created by Paul on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Eyes.h"
#import "Nose.h"
#import "Mouth.h"

@interface FaceManager : NSObject

@property (nonatomic,strong) NSArray* eyes;
@property (nonatomic) NSUInteger currentPosition;

@property (nonatomic, strong)NSArray* nose;


@property (nonatomic,strong)NSArray* mouth;


-(Eyes*) returnDefaultEye;

-(Eyes*) nextEye;

-(Nose*) returnDefaultNose;

-(Nose*) nextNose;

-(Mouth*) returnDefaultMouth;

-(Mouth*) nextMouth;

@end
