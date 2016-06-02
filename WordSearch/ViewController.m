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
    NSLog(@"%@", _textField.text);
}


@end
