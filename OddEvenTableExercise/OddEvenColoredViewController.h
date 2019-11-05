//
//  OddEvenColoredViewController.h
//  OddEvenTableExercise
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OddEvenColoredViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *oddEvenTableView;
@property (assign, nonatomic) bool isOdd;

@end

NS_ASSUME_NONNULL_END
