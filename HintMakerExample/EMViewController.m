//
//  EMViewController.m
//  HintMakerExample
//
//  Created by Eric McConkie on 3/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EMViewController.h"

@implementation EMViewController
#pragma mark ---------------------------------->> 
#pragma mark -------------->>hint deleage
-(CGRect)hintStateRectToHint:(id)hintState
{
    return CGRectMake(0, 0, 1, 1);//smallest possible rect to return
}

#pragma mark ---------------------------------->> 
#pragma mark -------------->>private
-(void)_onTap:(id)sender
{
    [_hint presentModalMessage:@"One last hint for ya." where:self.view];
}
#pragma mark - View lifecycle

-(void)_ui
{
    
    
    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [bt2 setCenter:self.view.center];
    [bt2 addTarget:self action:@selector(_onTap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt2];
    
    
    UIBarButtonItem *bi = [[UIBarButtonItem alloc] initWithTitle:@"list" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [self.navigationItem setRightBarButtonItem:bi];
    [bi release];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self _ui];

    _hint = [[EMHint alloc] init];
    [_hint setHintDelegate:self];
   
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

@end
