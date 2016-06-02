//
//  ViewController.m
//  WordSearch
//
//  Created by DetroitLabs on 6/2/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@end

 NSArray *puzzleLettersArray;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self scrambleOriginalArray];
//    puzzleLettersArray = [NSArray arrayWithObjects:@"c", @"a", @"t", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrambleOriginalArray {
    _originalArray = [NSMutableArray arrayWithObjects:@"cat", @"dog", @"mike", @"Bart", @"Annyoed", @"WHY", nil];
    
    int count = _originalArray.count;
    for (int i = 0; i < count - 1; ++i)
    {
        int nElements = count - i;
        int n = arc4random_uniform(nElements) + i;
       [_originalArray exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
    _textField.text = [_originalArray componentsJoinedByString:@""];
    _puzzleString = _textField.text;
    NSLog(@"%@", _textField.text);
}

- (IBAction)wordCheckButttonPressed:(id)sender {
    [self checkPuzzleString:_puzzleString containingWords:_userInputText.text];
}

-(void)checkPuzzleString:(NSString*)puzzleString containingWords:(NSString*)userInputWords{
    
    userInputWords = _userInputText.text;
    
    NSRange range = [_puzzleString  rangeOfString: userInputWords options: NSCaseInsensitiveSearch];
    NSLog(@"found: %@", (range.location != NSNotFound) ? @"Yes" : @"No");
//    if (range.location != NSNotFound) {
//       My logic to come
//    }
}







@end
