//
//  Video.h
//  VideoCamera
//
//  Created by Aditya Narayan on 1/21/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Video;

typedef NS_ENUM(NSInteger, VideoRecordingType) {
  VideoRecordingRegular,
  VideoRecordingSlowMotion
};


@interface Video : NSObject

@property (nonatomic, strong) NSString *filename;
@property (nonatomic, strong) NSDate *recordingDate;
@property (nonatomic) VideoRecordingType recordingType;
@property (nonatomic) float lengthInSeconds;
@property (nonatomic) float framerate;

@property (nonatomic, strong) NSMutableArray *thumbnails;
@property (nonatomic) NSUInteger locationInArray; //last to implement!!

@property (nonatomic) BOOL uploaded; //last to implement!!
@property (nonatomic) float uploadProgress; //last to implement!!
@property (nonatomic) BOOL keepOnDevice; //last to implement!!
@property (nonatomic) BOOL onDevice; //last to implement!!
@property (nonatomic, strong) NSURL *linkToPlayableCloudVideo; //last to implement!!
@property (nonatomic, strong) NSURL *linkToDownloadableCloudVideo; //last to implement!!

- (instancetype)initWithFilename:(NSString*) filename
               withRecordingDate:(NSDate*) recordingDate
               withRecordingType:(VideoRecordingType) recordingType
                      withLength:(float)length
                   withFramerate:(float)framerate
          withKeepOnDeviceStatus:(BOOL)keepOnDevice NS_DESIGNATED_INITIALIZER;

- (void)toggleKeepOnDevice;

@end
