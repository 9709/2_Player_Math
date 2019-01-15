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
    }
    return self;
}


- (NSString *) generateQuestion {
    self.answer = self.leftValue + self.rightValue;
    return [NSString stringWithFormat:@"What is %i + %i?", self.leftValue, self.rightValue];
}



@end
