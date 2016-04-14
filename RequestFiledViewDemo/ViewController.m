//
//  ViewController.m
//  360
//
//  Created by tztddong on 16/3/21.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "ViewController.h"
#import "RequestFiledView.h"

@interface ViewController ()

@end

@implementation ViewController
{
    RequestFiledView *_requestView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主页";
}

#pragma mark 无内容
//使用默认的提示title和图片
- (IBAction)one:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds Type:1 selectBlock:^{

            NSLog(@"刷新");
            if (_requestView) {

                [_requestView removeFromSuperview];
                _requestView = nil;
            }
    }];
    
    [self.view addSubview:_requestView];
}
//自定义提示title 使用默认图片
- (IBAction)two:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds Title:@"自定义文字" Type:1 selectBlock:^{
            NSLog(@"刷新");
            if (_requestView) {
                
                [_requestView removeFromSuperview];
                _requestView = nil;
            }
    }];
    [self.view addSubview:_requestView];
}
//使用默认title 自定义图片
- (IBAction)three:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds ImageName:@"wuwang_wuwangluotubiao" Type:1 selectBlock:^{
        NSLog(@"刷新");
        if (_requestView) {
            
            [_requestView removeFromSuperview];
            _requestView = nil;
        }
    }];
    [self.view addSubview:_requestView];
    
}
//自定义提示title 自定义图片
- (IBAction)four:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds Title:@"自定义两个" ImageName:@"wuwang_wuwangluotubiao" Type:1 selectBlock:^{
        NSLog(@"刷新");
        if (_requestView) {
            
            [_requestView removeFromSuperview];
            _requestView = nil;
        }
    }];
    [self.view addSubview:_requestView];
}

#pragma mark 无网络

- (IBAction)oneone:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds Type:2 selectBlock:^{
        
        NSLog(@"刷新");
        if (_requestView) {
            
            [_requestView removeFromSuperview];
            _requestView = nil;
        }
    }];
    
    [self.view addSubview:_requestView];
}
- (IBAction)twotwo:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds Title:@"自定义文字" Type:2 selectBlock:^{
        NSLog(@"刷新");
        if (_requestView) {
            
            [_requestView removeFromSuperview];
            _requestView = nil;
        }
    }];
    [self.view addSubview:_requestView];
}
- (IBAction)threethree:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds ImageName:@"wuwang_wuwangluotubiao" Type:2 selectBlock:^{
        NSLog(@"刷新");
        if (_requestView) {
            
            [_requestView removeFromSuperview];
            _requestView = nil;
        }
    }];
    [self.view addSubview:_requestView];

}
- (IBAction)fourfour:(id)sender {
    
    _requestView = [RequestFiledView configViewWithFrame:self.view.bounds Title:@"自定义两个" ImageName:@"wuwang_wuwangluotubiao" Type:2 selectBlock:^{
        NSLog(@"刷新");
        if (_requestView) {
            
            [_requestView removeFromSuperview];
            _requestView = nil;
        }
    }];
    [self.view addSubview:_requestView];
}

@end
