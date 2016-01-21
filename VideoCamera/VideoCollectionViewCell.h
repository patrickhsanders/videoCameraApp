//
//  VideoCollectionViewCell.h
//  VideoCamera
//
//  Created by Aditya Narayan on 1/21/16.
//  Copyright © 2016 turntotech.io. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnail;
@property (weak, nonatomic) IBOutlet UILabel *recordDate;
@property (weak, nonatomic) IBOutlet UILabel *lengthOfRecording;
@property (weak, nonatomic) IBOutlet UILabel *typeOfRecording;

@property (weak, nonatomic) IBOutlet UILabel *cloudStatus;
@property (weak, nonatomic) IBOutlet UILabel *deviceStatus;

@end
