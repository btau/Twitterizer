//
//  ViewController.m
//  Twitterizer
//
//  Created by Brett Tau on 1/13/16.
//  Copyright © 2016 Brett Tau. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)textViewDidChange:(UITextView *)textView {
    NSUInteger length;
    length = [textView.text length];
    self.count.text = [NSString stringWithFormat:@"Count: %lu", length];
}

- (IBAction)onTwitterizeTapped:(UIButton *)sender {
    NSString *userInput = self.textView.text;
    NSMutableString *noVowelsString = [NSMutableString new];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    for (int i = 0; i < userInput.length; i++) {
        if (![vowels characterIsMember:[userInput characterAtIndex:i]]) {
            [noVowelsString appendFormat:@"%c", [userInput characterAtIndex:i]];
            
            return;
        }
    }
    self.textView.text = [NSString stringWithFormat:@"%@", noVowelsString];
}


@end
