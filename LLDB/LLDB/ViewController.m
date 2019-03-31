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
- (IBAction)action_test1:(id)sender;
- (IBAction)action_test2:(id)sender;
- (IBAction)action_test3:(id)sender;
- (IBAction)action_test4:(id)sender;
- (IBAction)action_test5:(id)sender;
- (IBAction)action_test6:(id)sender;
- (IBAction)action_test7:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

void cTest () {
    printf("cTest\n");
}

- (void)ocTest {
    NSLog(@"ocTest");
}

- (void)ocTest1 {
    NSLog(@"ocTest1");
}

- (void)ocTest2 {
    NSLog(@"ocTest2");
}

- (void)ocTest3 {
    NSLog(@"ocTest3");
}

- (void)ocTest4:(NSString *)str {
    NSLog(@"ocTest4");
}

- (void)ocTest4:(NSString *)str type1:(NSString *)type{
    NSLog(@"ocTest4:type1");
}

- (void)ocTest4:(NSString *)str type2:(NSString *)type{
    NSLog(@"ocTest4:type2:");
}

- (void)ocTest4555:(NSString *)str type2:(NSString *)type{
    NSLog(@"ocTest4555:type2");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"1");
    NSLog(@"2");
}

- (IBAction)action_test:(id)sender {
    [self ocTest];
}

- (IBAction)action_test1:(id)sender {
    [self ocTest1];
}

- (IBAction)action_test2:(id)sender {
    [self ocTest2];
}

- (IBAction)action_test3:(id)sender {
    [self ocTest3];
}

- (IBAction)action_test4:(id)sender {
    [self ocTest4:@"123"];
}

- (IBAction)action_test5:(id)sender {
    [self ocTest4:@"123" type1:@"1"];
}

- (IBAction)action_test6:(id)sender {
    [self ocTest4:@"123" type2:@"1"];
}

- (IBAction)action_test7:(id)sender {
    [self ocTest4555:@"123" type2:@"1"];
}

@end
