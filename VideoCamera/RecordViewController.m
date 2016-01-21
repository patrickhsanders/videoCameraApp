//
//  RecordViewController.m
//  VideoCamera
//
//  Created by Aditya Narayan on 1/21/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import "RecordViewController.h"

@interface RecordViewController ()

@property (weak, nonatomic) IBOutlet UIButton *toggleRecordStatus;
@property (nonatomic) BOOL recordStatus;
@property (weak, nonatomic) IBOutlet UISwitch *slowMotionToggle;

@end

@implementation RecordViewController

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