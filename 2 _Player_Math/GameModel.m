//
//  GameModel.m
//  2 _Player_Math
//
//  Created by Matthew Chan on 2019-01-14.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init {
    if (self = [super init]) {
        int randomNum1 = arc4random_uniform(21)+1;
        int randomNum2 = arc4random_uniform(21)+1;
        _leftValue = randomNum1;
        _rightValue = randomNum2;
        _playerOne = [[Player alloc] init];
        _playerTwo = [[Player alloc] init];
        _currentPlayer = _playerOne;
        
    }
    return self;
}

// ================================================= Generate Question ============================================================================

- (NSString *) generateQuestion {
    int randomNum1 = arc4random_uniform(21)+1;
    int randomNum2 = arc4random_uniform(21)+1;
    _leftValue = randomNum1;
    _rightValue = randomNum2;
    self.answer = self.leftValue + self.rightValue;
    if([self.currentPlayer isEqual: self.playerOne]) {
        return [NSString stringWithFormat:@"Player 1: What is %i + %i?", self.leftValue, self.rightValue];
    } else {
        return [NSString stringWithFormat:@"Player 2: What is %i + %i?", self.leftValue, self.rightValue];
    }
}
    //- (NSString *)playerOne {
    //    NSString *generateQuestion; {
    //    self.answer = self.leftValue + self.rightValue;
    //        return [NSString stringWithFormat:@"Player 1: What is %i + %i?", self.leftValue, self.rightValue];
    //    }<#expression#>
    //}
    
    // ================================================= Next Player ============================================================================
    
    
    - (Player *) nextPlayer {
        if ([self.currentPlayer isEqual:self.playerOne]) {
            self.currentPlayer = self.playerTwo;
            return self.currentPlayer;
        } else {
            self.currentPlayer = self.playerOne;
            return  self.currentPlayer;
        }
    }

    

@end
