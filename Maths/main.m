//
//  main.m
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOver = NO;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];

        while (!gameOver) {

            AdditionQuestion *game = [[AdditionQuestion alloc] init];
            NSLog(@"%@", game.question);

            NSString *inputString = [InputHandler parseString];
            
            if ([inputString isEqualToString:@"quit"]) {
                NSLog(@"%@", [scoreKeeper score]);
                break;
            }
            
            NSInteger inputAnswer = [inputString integerValue];

            if (inputAnswer == game.answer) {
                NSLog(@"Right!");
                scoreKeeper.right++;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }

        }
    }
    return 0;
}
