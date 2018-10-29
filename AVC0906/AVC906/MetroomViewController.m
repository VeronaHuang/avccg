//
//  MetroomViewController.m
//  AVC906
//
//  Created by Huang Verona on 2018/9/10.
//  Copyright © 2018 cgmind. All rights reserved.
//

#import "MetroomViewController.h"
#import "CreateMeetingViewController.h"

@interface MetroomViewController ()
@property (weak, nonatomic) IBOutlet UIButton *createButton;
@property (weak, nonatomic) IBOutlet UIButton *joinButton;
@property (nonatomic, assign) int a;
/** metroomStatus */



@end

@implementation MetroomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//指定转场目标；button的值赋给metStatus
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"toSetting"]) {
        CreateMeetingViewController *createVC = segue.destinationViewController;
        createVC.metStatus = _a;
    }
}

//button赋值
- (IBAction)didClickCreateBtn:(id)sender {
    _a = 1;
    [self performSegueWithIdentifier:@"toSetting" sender:nil];
}
- (IBAction)didClickJoinBtn:(id)sender {
    _a = 2;
    [self performSegueWithIdentifier:@"toSetting" sender:nil];
}



@end







