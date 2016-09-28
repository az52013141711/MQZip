//
//  ViewController.m
//  MQZip_demo
//
//  Created by yoka_mobile_cm on 16/9/28.
//  Copyright © 2016年 杨孟强. All rights reserved.
//

#import "ViewController.h"
#import "MQZip.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSData *data = [@"12345678哈哈哈哈" dataUsingEncoding:NSUTF8StringEncoding];
    
    NSData *compressData = [MQZip compressData:data];
    NSLog(@"compressData:%ld", compressData.length);
    
    NSData *uncompressData = [MQZip uncompressData:compressData];
    NSLog(@"uncompressData:\n%@", [[NSString alloc] initWithData:uncompressData encoding:NSUTF8StringEncoding]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
