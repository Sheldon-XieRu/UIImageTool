//
//  ViewController.m
//  UIImageToolDemo
//
//  Created by Ru on 26/4/16.
//  Copyright © 2016年 Ru. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Tool.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *clipedImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.clipedImage.image = [UIImage clipImageToRoundFrame:[UIImage imageNamed:@"阿狸头像"] borderWidth:3 borderColor:[UIColor redColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
