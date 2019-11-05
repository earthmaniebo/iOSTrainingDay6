//
//  DetailsViewController.h
//  OddEvenTableExercise
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (assign, nonatomic) bool isOdd;
@end

NS_ASSUME_NONNULL_END
