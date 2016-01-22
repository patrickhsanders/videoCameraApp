//
//  RecordViewController.m
//  VideoCamera
//
//  Created by Aditya Narayan on 1/21/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

//https://www.objc.io/issues/23-video/capturing-video/

#import "RecordViewController.h"
#import "VideoPreview.h"
@import AVFoundation;


@interface RecordViewController ()

@property (weak, nonatomic) IBOutlet UIButton *toggleRecordStatus;
@property (nonatomic) BOOL recordStatus;
@property (weak, nonatomic) IBOutlet UISwitch *slowMotionToggle;
@property (weak, nonatomic) IBOutlet VideoPreview *preview;

@property (nonatomic, strong) AVCaptureSession *captureSession;
@property (nonatomic, strong) AVCaptureDevice *camera;
@property (nonatomic, strong) AVCaptureDeviceInput *cameraInput;
@property (nonatomic, strong) AVCaptureDevice *microphone;
@property (nonatomic, strong) AVCaptureMovieFileOutput *fileOutput;
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *previewLayer;
//@property (nonatomic, strong) AVCaptureMovieFileOutput *fileOutput;
@end

@implementation RecordViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  _captureSession = [AVCaptureSession new];
  _camera = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  NSError *error;
  _cameraInput = [[AVCaptureDeviceInput alloc] initWithDevice:_camera error:&error];
  if ([_captureSession canAddInput:_cameraInput]) {
    [_captureSession addInput:_cameraInput];
  }
  
  _fileOutput = [AVCaptureMovieFileOutput new];
  if([_captureSession canAddOutput:_fileOutput]){
    [_captureSession addOutput:_fileOutput];
  }
  
  _previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:_captureSession];
  UIView *prev = [[UIView alloc] initWithFrame:self.view.frame];
  _previewLayer.frame = prev.bounds;
  [prev.layer addSublayer:_previewLayer];
  
//  if([[[[AVCaptureDevice devices] objectAtIndex:0] localizedName] isEqualToString:@"Back Camera"]){
//    _camera = [[AVCaptureDevice devices] objectAtIndex:0];
//  } else { NSLog(@"NOT THE RIGHT CAMERA"); }
//  if([[[[AVCaptureDevice devices] objectAtIndex:2] localizedName] isEqualToString:@"iPhone Microphone"]){
//    _microphone = [[AVCaptureDevice devices] objectAtIndex:2];
//  } else { NSLog(@"NOT THE RIGHT DEVICE -MICROPHONE"); }
//  _fileOutput = ...
  
//  if([_captureSession canAddInput:_camera]
//     && [_captureSession canAddInput:_microphone] ){
////     && [_captureSession canAddOutput:_fileOutput]){
//    [_captureSession addInput:_camera];
//    [_captureSession addInput:_microphone];
////    [_captureSession addOutput:_fileOutput];
//  }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleRecord:(id)sender {
  
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
