//
//  ViewController.m
//  LLDB
//
//  Created by 邓斌 on 2019/3/31.
//  Copyright © 2019 DengBin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)action_test:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)action_test:(id)sender {
    [self ocTest];
}

void cTest () {
    printf("cTest\n");
}

- (void)ocTest {
    NSLog(@"ocTest");
    [self ocTest1];
}

- (void)ocTest1 {
    NSLog(@"ocTest1");
    [self ocTest2];
}

- (void)ocTest2 {
    [self ocTest3];
    NSLog(@"ocTest2");
}

- (void)ocTest3 {
    NSLog(@"ocTest3");
    [self ocTest4:@"123"];
}

- (void)ocTest4:(NSString *)str {
    NSLog(@"ocTest4：%@",str);
    [self ocTest4:@"123" type1:@"1"];
}

- (void)ocTest4:(NSString *)str type1:(NSString *)type{
    NSLog(@"ocTest4:type1");
    type = @"3";
    [self ocTest4:@"123" type2:@"2"];
}

- (void)ocTest4:(NSString *)str type2:(NSString *)type{
    NSLog(@"ocTest4:type2:");
    [self ocTest4555:@"123" type2:@"2"];
}

- (void)ocTest4:(NSString *)str type3:(NSString *)type{
    NSLog(@"ocTest4:type3:");
    [self ocTest4555:@"123" type2:@"3"];
}

- (void)ocTest4555:(NSString *)str type2:(NSString *)type{
    NSLog(@"ocTest4555:type2");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"1");
    NSLog(@"2");
}

@end
