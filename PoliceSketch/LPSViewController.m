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
//same thing as alloc init just saves code space
@property (nonatomic) FaceManager *face;
@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //setting this property face as the initialization so it can be used everywhere and not just in this method
    self.face = [[FaceManager alloc]init];
    
    
    Eyes *eye = [self.face returnDefaultEye];
    //shorter version allows the IBOulet to take an image
    self.eyesImageView.image = eye.eyeImage;
    
    
    
    Nose *nose = [self.face returnDefaultNose];
    UIImage *noseImage = nose.nose; //Paul and then paul's phone number. it goes in detail.
    self.noseImageView.image = noseImage;//self.noseImageView.image(lets you hold an image in nose)
    
    //mouth instance equal to the default mouth
    Mouth* mouthClass = [self.face returnDefaultMouth];
    UIImage *mouthHolder = mouthClass.mouth; //the mouthClass is a wrapper it needs to be more specific
    //assign this to the boulet
    self.mouthImageView.image = mouthHolder;

}


- (IBAction)eyeRight:(id)sender {
    Eyes *nextEyes = [self.face nextEye];
    self.eyesImageView.image = nextEyes.eyeImage;
    
}


- (IBAction)noseRight:(id)sender {
    //init nose and set it as the method in self.face
    Nose *nose = [self.face nextNose];
    //assign to a variable and set nose to call its property
    UIImage* noseImage = nose.nose;
    //assign it to boulet.
    self.noseImageView.image = noseImage;
    
}


- (IBAction)mouthRight:(id)sender {
    
    Mouth *mouth = [self.face nextMouth];
    UIImage *mouthImage = mouth.mouth;
    self.mouthImageView.image = mouthImage;
    
}



@end
