//
//  Eyes.h
//  PoliceSketch
//
//  Created by Paul on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface Eyes : NSObject
@property(nonatomic,strong)UIImage* eyeImage;


-(instancetype)initWithEyes:(NSString*)eyeName;


@end
