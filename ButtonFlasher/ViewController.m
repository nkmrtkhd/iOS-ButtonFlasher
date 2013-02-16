//
//  ViewController.m
//  ButtonFlasher
//
//  Created by nakamura on 2013/02/16.
//  Copyright (c) 2013年 nakamlab. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionFlash:(id)sender {
    UIButton *button = (UIButton *)sender;
    
    CAKeyframeAnimation *blinkAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    blinkAnimation.duration = 2.0f;
    blinkAnimation.repeatCount = FLT_MAX;
    blinkAnimation.values = [[NSArray alloc] initWithObjects:
                             [NSNumber numberWithFloat:1.0f],
                             [NSNumber numberWithFloat:0.1f],
                             [NSNumber numberWithFloat:1.0f],
                             nil];
    
    [button.layer addAnimation:blinkAnimation forKey:@"blink"];

}
@end
