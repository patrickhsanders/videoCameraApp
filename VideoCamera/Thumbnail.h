//
//  Thumbnail.h
//  VideoCamera
//
//  Created by Aditya Narayan on 1/21/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Video.h"

@interface Thumbnail : NSObject

@property (nonatomic, strong) NSString* filename;
@property (nonatomic, strong) UIImage* image;
@property (nonatomic, weak) Video* video; 

@end
