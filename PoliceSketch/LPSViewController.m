//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "FaceManager.h"

@interface LPSViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;

@property (nonatomic) FaceManager *face;
@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //setting this property face as the initialization so it can be used everywhere and not just in this method
    self.face = [[FaceManager alloc]init];
    
    //can also use eyes *eye = self.face.eye[0]; to access the first of the array.
    Eyes *eye = [self.face returnDefaultEye];
    //shorter version allows the IBOulet to take an image
    self.eyesImageView.image = eye.eyeImage;
    
    
    
    Nose *nose = [self.face returnDefaultNose];
    UIImage *noseImage = nose.nose; //Paul and then paul's phone number. it goes in detail. nose before accessing property is just a wrapper.
    self.noseImageView.image = noseImage;//self.noseImageView.image(lets you hold an image in nose)
    
    //mouth instance equal to the default mouth
    Mouth* mouthClass = [self.face returnDefaultMouth];
    self.mouthImageView.image  = mouthClass.mouth;
    

}


- (IBAction)eyeRight:(id)sender {
    // nextEyes is a variale holding the method call.
    Eyes *nextEyes = [self.face nextEye];
    self.eyesImageView.image = nextEyes.eyeImage;
    
}

- (IBAction)eyeLeft:(UIButton *)sender {
    
    Eyes *leftEye = [self.face previousEye];
    
    self.eyesImageView.image = leftEye.eyeImage;
    
    
}




- (IBAction)noseRight:(id)sender {
    //attaching image to the method and diving on level deeper to get the nose property
    self.noseImageView.image = [self.face nextNose].nose;
    
}

- (IBAction)noseLeft:(UIButton *)sender {
    
    Nose *nose = [self.face previousNose];

    self.noseImageView.image = nose.nose;//the image of nose
}





- (IBAction)mouthRight:(id)sender {
    self.mouthImageView.image = [self.face nextMouth].mouth;
}


- (IBAction)mouthLeft:(id)sender {
    
    Mouth *mouth = [self.face previousMouth];
    
    //attaching it to the mouth's image
    self.mouthImageView.image = mouth.mouth;
    
}



@end
