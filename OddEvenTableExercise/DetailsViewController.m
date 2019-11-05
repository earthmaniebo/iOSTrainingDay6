//
//  DetailsViewController.m
//  OddEvenTableExercise
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _label.textColor = UIColor.whiteColor;
    if (_isOdd) {
        _label.text = @"Odd";
        _bgView.backgroundColor = UIColor.redColor;
    } else {
        _label.text = @"Even";
        _bgView.backgroundColor = UIColor.blueColor;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
