//
//  ViewController.m
//  UIAppManually
//
//  Created by Rose on 5/10/17.
//  Copyright © 2017 aksanakarpenka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.backgroundColor = [UIColor colorWithRed:(128 / 255.0)
                                                green:(128 / 255.0)
                                                 blue:(128 / 255.0)
                                                alpha:0.9];
    
    // firstNameLabel style begin
    self.firstNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 90, 20)];
    self.firstNameLabel.text = @"First Name:";
    self.firstNameLabel.backgroundColor = [UIColor colorWithRed:(250 / 255.0)
                                                          green:(162 / 255.0)
                                                           blue:(60 / 255.0)
                                                          alpha:0.3];
    [self.firstNameLabel.layer setCornerRadius:5];
    [self.firstNameLabel.layer setMasksToBounds:YES];
    self.firstNameLabel.textColor = [UIColor colorWithRed:(70 / 255.0)
                                                    green:(70 / 255.0)
                                                     blue:(70 / 255.0)
                                                    alpha:0.9];
    self.firstNameLabel.font = [UIFont fontWithName:@"Courier" size:12];
    // firstNameLabel style end
    
    // lastNameLabel style begin
    self.lastNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 125, 90, 20)];
    self.lastNameLabel.text = @"Last Name:";
    self.lastNameLabel.backgroundColor = [UIColor colorWithRed:(250 / 255.0)
                                                         green:(162 / 255.0)
                                                          blue:(60 / 255.0)
                                                         alpha:0.3];
    [self.lastNameLabel.layer setCornerRadius:5];
    [self.lastNameLabel.layer setMasksToBounds:YES];
    self.lastNameLabel.textColor = [UIColor colorWithRed:(70 / 255.0)
                                                   green:(70 / 255.0)
                                                    blue:(70 / 255.0)
                                                   alpha:0.9];
    self.lastNameLabel.font = [UIFont fontWithName:@"Courier" size:12];
    // lastNameLabel style end
    
    // firstNameTextField style begin
    self.firstNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 100, 100, 20)];
    self.firstNameTextField.text = @"Aksana";
    self.firstNameTextField.font = [UIFont fontWithName:@"Courier" size:12];
    self.firstNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.firstNameTextField.backgroundColor = [UIColor colorWithRed:(250 / 255.0)
                                                              green:(162 / 255.0)
                                                               blue:(60 / 255.0)
                                                              alpha:0.2];
    // firstNameTextField style end
    
    // lastNameTextField style begin
    self.lastNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 125, 100, 20)];
    self.lastNameTextField.text = @"Karpenka";
    self.lastNameTextField.font = [UIFont fontWithName:@"Courier" size:12];
    self.lastNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.lastNameTextField.backgroundColor = [UIColor colorWithRed:(250 / 255.0)
                                                             green:(162 / 255.0)
                                                              blue:(60 / 255.0)
                                                             alpha:0.2];
    // firstNameTextField style end
    
    // greetingButton style begin
    self.greetingButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 150, 200, 25)];
    [self.greetingButton setTitle:@"Hello" forState:UIControlStateNormal];
    self.greetingButton.backgroundColor = [UIColor colorWithRed:(250 / 255.0)
                                                          green:(162 / 255.0)
                                                           blue:(60 / 255.0)
                                                          alpha:0.6];
    [self.greetingButton setTitleColor:[UIColor colorWithRed:(70 / 255.0)
                                                       green:(70 / 255.0)
                                                        blue:(70 / 255.0)
                                                       alpha:0.6]
                              forState:UIControlStateNormal];
    [self.greetingButton addTarget:self action:@selector(handleGreetingButton:)
                  forControlEvents:UIControlEventTouchUpInside];
    self.greetingButton.titleEdgeInsets = UIEdgeInsetsMake(2, 3, 2, 3);
    self.greetingButton.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
    //greetingButton style begin
    
    [self.view addSubview:self.firstNameLabel];
    [self.view addSubview:self.lastNameLabel];
    [self.view addSubview:self.firstNameTextField];
    [self.view addSubview:self.lastNameTextField];
    [self.view addSubview:self.greetingButton];

}

- (void)handleGreetingButton:(UIButton *)sender {
    NSString *helloStr = [NSString stringWithFormat:@"Hello, %@ %@", self.firstNameTextField.text, self.lastNameTextField.text];
    [sender setTitle:helloStr forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
