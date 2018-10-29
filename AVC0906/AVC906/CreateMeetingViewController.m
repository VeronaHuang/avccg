//
//  CreateMeetingViewController.m
//  AVC906
//
//  Created by Huang Verona on 2018/9/10.
//  Copyright © 2018 cgmind. All rights reserved.
//

#import "CreateMeetingViewController.h"
#import "MetroomViewController.h"

@interface CreateMeetingViewController ()<UIAlertViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *lowResolutionBtn;
@property (weak, nonatomic) IBOutlet UIButton *standardResolutionBtn;
@property (weak, nonatomic) IBOutlet UIButton *highResolutionBtn;
@property (weak, nonatomic) IBOutlet UISwitch *cameraSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *micSwitch;

@property (weak, nonatomic) IBOutlet UIButton *cameraOnBtn;
@property (weak, nonatomic) IBOutlet UIButton *micOnBtn;
@property (weak, nonatomic) IBOutlet UISwitch *cameraSwc;
@property (weak, nonatomic) IBOutlet UISwitch *micSwc;

@property (weak, nonatomic) IBOutlet UITextField *roomPwText;
@property (weak, nonatomic) IBOutlet UILabel *cameraLabel;
@property (weak, nonatomic) IBOutlet UILabel *micLabel;



@end

@implementation CreateMeetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (_metStatus == 1) {
        _cameraOnBtn.hidden = YES;
        _micOnBtn.hidden = YES;
        _cameraSwc.hidden = NO;
        _micSwc.hidden = NO;
        _roomPwText.placeholder = @"请设置房间密码";
        _cameraLabel.text = @"房间默认摄像头";
        _micLabel.text = @"房间默认麦克风";
        
    } else {
        _cameraOnBtn.hidden = NO;
        _micOnBtn.hidden = NO;
        _cameraSwc.hidden = YES;
        _micSwc.hidden = YES;
        _roomPwText.placeholder = @"请输入房间密码";
        _cameraLabel.text = @"我的摄像头";
        _micLabel.text = @"我的麦克风";
        _cameraOnBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        _micOnBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }

}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    //我的分辨率：按钮形状和颜色
    _lowResolutionBtn.layer.masksToBounds = YES;
    _lowResolutionBtn.layer.borderColor = UIColor.grayColor.CGColor;
    _lowResolutionBtn.layer.borderWidth = 0.5;
    _lowResolutionBtn.layer.cornerRadius = _lowResolutionBtn.bounds.size.height * 0.5;
    
    _standardResolutionBtn.layer.masksToBounds = YES;
    _standardResolutionBtn.layer.borderColor = UIColor.grayColor.CGColor;
    _standardResolutionBtn.layer.borderWidth = 0.5;
    _standardResolutionBtn.layer.cornerRadius = _standardResolutionBtn.bounds.size.height * 0.5;
    
    _highResolutionBtn.layer.masksToBounds = YES;
    _highResolutionBtn.layer.borderColor = UIColor.grayColor.CGColor;
    _highResolutionBtn.layer.borderWidth = 0.5;
    _highResolutionBtn.layer.cornerRadius = _highResolutionBtn.bounds.size.height * 0.5;

}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)viewDidAppear:(BOOL)animated {
    
}

- (void)updateButtons {
    
}

- (IBAction)lowResolution:(UIButton *)sender {
    sender.selected = YES;
    sender.layer.borderColor = UIColor.blueColor.CGColor;
    
    if (_highResolutionBtn != sender) {
        _highResolutionBtn.selected = false;
        _highResolutionBtn.layer.borderColor = UIColor.lightGrayColor.CGColor;
    }
    
    if (_lowResolutionBtn != sender) {
        _lowResolutionBtn.selected = false;
        _lowResolutionBtn.layer.borderColor = UIColor.lightGrayColor.CGColor;
    }
    
    if (_standardResolutionBtn != sender) {
        _standardResolutionBtn.selected = false;
        _standardResolutionBtn.layer.borderColor = UIColor.lightGrayColor.CGColor;
    }
        
}

- (IBAction)didClickCameraOnBtn:(id)sender {
    UIButton *cBtn = (UIButton *)sender;
    cBtn.selected =! cBtn.selected;
    if (cBtn.selected) {
        [cBtn setImage:[UIImage imageNamed:@"calling-Novideo"] forState:UIControlStateSelected];
    } else {
        [cBtn setImage:[UIImage imageNamed:@"join-camera on"] forState:UIControlStateNormal];
    }
}

- (IBAction)didClickMicOnBtn:(id)sender {
    UIButton *mBtn = (UIButton *)sender;
    mBtn.selected =! mBtn.selected;
    if (mBtn.selected) {
        [mBtn setImage:[UIImage imageNamed:@"calling-mute"] forState:UIControlStateSelected];
    } else {
        [mBtn setImage:[UIImage imageNamed:@"join-mircophone on"] forState:UIControlStateNormal];
    }
}

//UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    if (textField == _roomPwText) {
//        <#statements#>
//    }
    NSLog(@"%@", textField.text);
    return YES;
}

//点击空白处，键盘收回
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
