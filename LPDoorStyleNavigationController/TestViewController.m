//
//  RedViewController.m
//  WPImages
//
//  Created by Игорь Савельев on 12/10/14.
//  Copyright (c) 2014 Leonspok. All rights reserved.
//

#import "TestViewController.h"
#import "LPDoorStyleNavigationController.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet UILabel *viewControllerNumberLabel;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor clearColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.viewControllerNumberLabel setText:[NSString stringWithFormat:@"View controller number: %ld", (long)[self.navigationController.viewControllers indexOfObject:self]]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)push:(id)sender {
    [self.navigationController pushViewController:[[TestViewController alloc] initWithNibName:NSStringFromClass(TestViewController.class) bundle:nil] animated:YES];
}

- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)toRoot:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)left:(id)sender {
    LPDoorStyleNavigationController *nc = (LPDoorStyleNavigationController *)self.navigationController;
    nc.side = LPDoorLeftSide;
    [self push:sender];
}

- (IBAction)right:(id)sender {
    LPDoorStyleNavigationController *nc = (LPDoorStyleNavigationController *)self.navigationController;
    nc.side = LPDoorRightSide;
    [self push:sender];
}

- (IBAction)top:(id)sender {
    LPDoorStyleNavigationController *nc = (LPDoorStyleNavigationController *)self.navigationController;
    nc.side = LPDoorTopSide;
    [self push:sender];
}

- (IBAction)bottom:(id)sender {
    LPDoorStyleNavigationController *nc = (LPDoorStyleNavigationController *)self.navigationController;
    nc.side = LPDoorBottomSide;
    [self push:sender];
}

@end
