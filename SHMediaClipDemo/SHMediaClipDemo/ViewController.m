//
//  ViewController.m
//  SHMediaClipDemo
//
//  Created by 查斯图 on 2020/6/2.
//  Copyright © 2020 net.tangce.iOS. All rights reserved.
//

#import "ViewController.h"
#import "SHMediaManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"点击页面开始裁剪";
    [self.view addSubview:label];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"oceans" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:path];
    [SHMediaManager cropWithVideoUrlStr:url start:1.0 end:15.0 completion:^(NSURL *outputURL, Float64 videoDuration, BOOL isSuccess) {
        if (isSuccess) {
            NSLog(@"-转码完成------\n路径：%@",outputURL);
        }
    }];
    //注意：正式项目中使用的话根据自己的环境做一些相关的判断
}

@end
