//
//  ViewController.m
//  test
//
//  Created by jpz on 2019/7/26.
//  Copyright © 2019 jpz. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<CALayerDelegate>
@property (nonatomic, strong) WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化wkwebview
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0,self.view.frame.size.width,self.view.frame.size.height)];
    [self.view addSubview:self.webView];
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *htmlPath = [mainBundle pathForResource:@"test" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:htmlPath];
    NSURLRequest* req = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:req];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
//    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, 10)];
//    view.backgroundColor = [UIColor redColor];
//    view.layer.speed = 0;
//    [self.navigationController.view addSubview:view];
    
    // 测试imageview 和 speed
    UIImageView *testView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    [self.view addSubview:testView];
    testView.layer.speed = 0;
//    testView.layer.delegate = self;   //设置代理后就又可以调起了
    [self.navigationController.view addSubview:testView];
//    [view addSubview:testView];
}

@end
