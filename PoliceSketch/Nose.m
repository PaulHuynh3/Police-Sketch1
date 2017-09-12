//
//  Nose.m
//  PoliceSketch
//
//  Created by Paul on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Nose.h"

@implementation Nose

-(instancetype)initWithNose:(NSString *)nose{
    
    if (self = [super init]){
     _nose = [UIImage imageNamed:nose];
    }
    return self;
}

@end
