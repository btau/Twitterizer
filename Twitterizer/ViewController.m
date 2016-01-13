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
    //creating a character counter
    NSUInteger length;
    length = [textView.text length];
    self.count.text = [NSString stringWithFormat:@"Count: %lu", length];
    
    //limit count to 140 characters
    NSInteger maxChar = 139;
    if (textView.text.length > maxChar) {
        textView.editable = NO;
    }
}


- (IBAction)onTwitterizeTapped:(UIButton *)sender {
    //Attempt at removing vowels
    NSString *userInput = self.textView.text;
    NSMutableString *noVowelsString = [NSMutableString new];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    for (int i = 0; i < userInput.length; i++) {
        if (![vowels characterIsMember:[userInput characterAtIndex:i]]) {
            [noVowelsString appendFormat:@"%c", [userInput characterAtIndex:i]];
        }
    }
    self.textView.text = [NSString stringWithFormat:@"%@", noVowelsString];
}

- (IBAction)onHashtagTapped:(UIButton *)sender {
    //adding hashtag to first word, then every other word
}

@end
