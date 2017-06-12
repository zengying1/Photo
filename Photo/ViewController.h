//
//  ViewController.h
//  VideoPlayer
//
//  Created by Oreal51 on 2017/6/12.
//  Copyright © 2017年 Oreal51. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)takePhoto:(id)sender;
- (IBAction)loadFromLibrary:(id)sender;

@end

