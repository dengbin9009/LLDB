
//
//  ViewController2.m
//  LLDB
//
//  Created by 邓斌 on 2019/3/31.
//  Copyright © 2019 DengBin. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
- (IBAction)action4:(id)sender;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)ocTest4:(NSString *)str type3:(NSString *)type{
    NSLog(@"ocTest4:type3:");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)action4:(id)sender {
    [self ocTest4:@"123" type3:@"3"];
}
@end
