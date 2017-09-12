//
//  Mouth.m
//  PoliceSketch
//
//  Created by Paul on 2017-09-12.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Mouth.h"

@implementation Mouth

-(instancetype)initWithMouth:(NSString *)mouth{
    
    if (self = [super init]){
    
        self.mouth = [UIImage imageNamed:mouth];
    }
    return self;
}

@end
