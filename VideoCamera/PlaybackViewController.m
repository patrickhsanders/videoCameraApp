//
//  PlaybackViewController.m
//  VideoCamera
//
//  Created by Aditya Narayan on 1/21/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import "PlaybackViewController.h"

@interface PlaybackViewController ()

@property (weak, nonatomic) IBOutlet UIButton *togglePlayback;
@property (weak, nonatomic) IBOutlet UIButton *increasePlaybackSpeed;
@property (weak, nonatomic) IBOutlet UIButton *reversePlaybackSpeed;
@property (weak, nonatomic) IBOutlet UIButton *jumpBack;

@end

@implementation PlaybackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
