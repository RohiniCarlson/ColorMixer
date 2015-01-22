//
//  ViewController.m
//  ColorMixer
//
//  Created by it-högskolan on 2015-01-22.
//  Copyright (c) 2015 it-högskolan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *colorDisplay;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;

@end

@implementation ViewController

- (UIColor*) currentColor {
    return [UIColor colorWithRed:self.redSlider.value
                          green:self.blueSlider.value
                           blue:self.greenSlider.value
                           alpha:1.0f];
}

- (IBAction)redSliderChanged:(id)sender {
    self.colorDisplay.backgroundColor = [self currentColor];
    self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.blueSlider.value];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self redSliderChanged:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
