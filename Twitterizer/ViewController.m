//
//  ViewController.m
//  Twitterizer
//
//  Created by Brett Tau on 1/13/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onTwitterizeTapped:(UIButton *)sender {
    NSString *userInput = self.textView.text;
    NSMutableString *noVowelsString = [NSMutableString new];
    
    for (int i = 0; i < userInput.length; i++) {
        if ([userInput characterAtIndex:i] != [NSString stringWithFormat:@"a"]) {
//            NSString *character = [NSString stringWithFormat:@"%c", [userInput characterAtIndex:i]];
        }
        
    }
    
}

@end
