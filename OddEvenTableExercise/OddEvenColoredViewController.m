//
//  OddEvenColoredViewController.m
//  OddEvenTableExercise
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "OddEvenColoredViewController.h"
#import "Cell/OddEvenTableViewCell.h"
#import "DetailsViewController.h"

@interface OddEvenColoredViewController ()

@end

@implementation OddEvenColoredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.oddEvenTableView registerNib:[UINib nibWithNibName:@"OddEvenTableViewCell" bundle:nil] forCellReuseIdentifier:@"OddEvenCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    OddEvenTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OddEvenCell"];
    cell.label.textColor = UIColor.whiteColor;
    if ((indexPath.row + 1) % 2 == 0) {
        cell.label.text = @"Even";
        cell.bgView.backgroundColor = UIColor.blueColor;
    } else {
        cell.label.text = @"Odd";
        cell.bgView.backgroundColor = UIColor.redColor;
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ((indexPath.row + 1) % 2 == 0) {
        _isOdd = false;
    } else {
        _isOdd = true;
    }
    [self performSegueWithIdentifier:@"detailsSegue" sender:nil];
    [_oddEvenTableView deselectRowAtIndexPath:indexPath animated:true];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailsSegue"]) {
        DetailsViewController *vc = [segue destinationViewController];
        vc.isOdd = _isOdd;
    }
}
@end
