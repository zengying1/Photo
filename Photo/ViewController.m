//
//  ViewController.m
//  VideoPlayer
//
//  Created by Oreal51 on 2017/6/12.
//  Copyright © 2017年 Oreal51. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)takePhoto:(id)sender{
    //初始化图片采集控制器
    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        //我们可以使用摄像头
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        //如果可以，使用前置摄像头
        if ([UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceFront]) {
            picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
        }
        else
            picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
        
        //使该对象成为委托
        picker.delegate = self;
        //显示图片
        [self presentViewController:picker animated:YES completion:nil];
    }
}

- (IBAction)loadFromLibrary:(id)sender {
    UIImagePickerController* picker = [[UIImagePickerController alloc]init];
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    picker.delegate = self;
    [self presentViewController:picker animated:YES completion:nil];
}


// 添加UIimagePickerControllerDelegate方法
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage* image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image =image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
