//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Paul on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoliceSketch : NSObject

/* 
 2) Create a custom class that will be used to hold the data for the current state of the police sketch. You’ll want to use only a single instance of this class, so make something that can hold the current name of the image selected for each section of the face, and methods to move backwards and forwards in the list for each section. Make sure they can loop around once they reach the first or last image in a list.
 
 Now create some methods that the buttons will use as actions to change the current selected image for each section. Think about model-view-controller design and how you’ll get the updated information from the custom class once the image has been updated.
 
 */

-(NSArray*)pictureHolder:(NSArray*)pictures;





@end
