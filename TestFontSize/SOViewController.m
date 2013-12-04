//
//  SOViewController.m
//  TestFontSize
//
//  Created by Overby, Sean on 12/3/13.
//  Copyright (c) 2013 Sean Overby. All rights reserved.
//

#import "SOViewController.h"

@interface SOViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *zoomOut;
@property (weak, nonatomic) IBOutlet UIButton *zoomIn;
@end

@implementation SOViewController

float defaultFontSize;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    defaultFontSize = [UIFont systemFontSize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)zoomOut:(id)sender {
    if(defaultFontSize < 60) {
        defaultFontSize = defaultFontSize + 2;
        [self.textView setFont:[UIFont systemFontOfSize:defaultFontSize]];
        [self.textView setNeedsLayout];
    }
}

- (IBAction)zoomIn:(id)sender {
    if(defaultFontSize > 14) {
        defaultFontSize = defaultFontSize - 2;
        [self.textView setFont:[UIFont systemFontOfSize:defaultFontSize]];
        [self.textView setNeedsLayout];
    }
}
@end
