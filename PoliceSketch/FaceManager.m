//
//  FaceManager.m
//  PoliceSketch
//
//  Created by Paul on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "FaceManager.h"

@implementation FaceManager


-(instancetype)init{
    self = [super init];
    if (self){
        [self createEyes];
        [self createNose];
        [self createMouth];
        self.currentPosition = 0;
    }
    return self;
}

-(void) createEyes {
    Eyes *e1 = [[Eyes alloc]initWithEyes:@"eyes_1.jpg"];
    Eyes *e2 = [[Eyes alloc]initWithEyes:@"eyes_2.jpg"];
    Eyes *e3 = [[Eyes alloc]initWithEyes:@"eyes_3.jpg"];
    Eyes *e4 = [[Eyes alloc]initWithEyes:@"eyes_4.jpg"];
    Eyes *e5 = [[Eyes alloc]initWithEyes:@"eyes_5.jpg"];
    
    //add the eye instances to an array
    self.eyes = @[e1,e2,e3,e4,e5];
    
}

//return the first eye
-(Eyes*)returnDefaultEye{
  return self.eyes[0];
}



//This is going to return the next eye as the current eye
-(Eyes*)nextEye{
    self.currentPosition += 1;
    
    if (self.currentPosition > [self.eyes count] - 1) {
        self.currentPosition = 0;
    }
    
    
    
    return self.eyes[self.currentPosition];
}


//allows scrolling backwards
-(Eyes *)previousEye{
    
    if (self.currentPosition != 0){
    self.currentPosition -= 1;
    }
    
    if (self.currentPosition == 0){
        self.currentPosition = self.eyes.count - 1;
        
    }
    
    
    
    return self.eyes[self.currentPosition];
}



-(void)createNose{

    Nose *n1 = [[Nose alloc]initWithNose:@"nose_1.jpg"];
    Nose *n2 = [[Nose alloc]initWithNose:@"nose_2.jpg"];
    Nose *n3 = [[Nose alloc]initWithNose:@"nose_3.jpg"];
    Nose *n4 = [[Nose alloc]initWithNose:@"nose_4.jpg"];
    Nose *n5 = [[Nose alloc]initWithNose:@"nose_5.jpg"];

    self.nose = @[n1,n2,n3,n4,n5];
}

-(Nose*)returnDefaultNose{
    return self.nose[0];
    
}

-(Nose *)nextNose{
    
    self.currentPosition += 1;
    //the count sees 5 elements but the array starts from 4
    if (self.currentPosition > [self.nose count] -1 ) {
        self.currentPosition = 0;
    }
    
    return self.nose[self.currentPosition];
}

-(Nose *)previousNose{
    if (self.currentPosition != 0){
    self.currentPosition -= 1;
    }
        
    if (self.currentPosition == 0){
        self.currentPosition = self.nose.count - 1;
    }
   return self.nose[self.currentPosition];

}


-(void)createMouth{
    
    Mouth *m1 = [[Mouth alloc]initWithMouth:@"mouth_1.jpg"];
    Mouth *m2 = [[Mouth alloc]initWithMouth:@"mouth_2.jpg"];
    Mouth *m3 = [[Mouth alloc]initWithMouth:@"mouth_3.jpg"];
    Mouth *m4 = [[Mouth alloc]initWithMouth:@"mouth_4.jpg"];
    Mouth *m5 = [[Mouth alloc]initWithMouth:@"mouth_5.jpg"];
    
    self.mouth = @[m1,m2,m3,m4,m5];
    
}

-(Mouth*)returnDefaultMouth{
    return self.mouth[0];
}

-(Mouth*)nextMouth{
    self.currentPosition += 1;
    
    if (self.currentPosition > self.mouth.count - 1) {
      self.currentPosition =0;
    }
    
    
    return self.mouth[self.currentPosition];
}


-(Mouth *)previousMouth{
    if (self.currentPosition != 0){
    self.currentPosition -= 1;
    }
        
        
    if (self.currentPosition == 0){
        self.currentPosition = self.mouth.count -1;
    
    }
    return self.mouth[self.currentPosition];
}




@end
