//
//  GameModel.h
//  2 _Player_Math
//
//  Created by Matthew Chan on 2019-01-14.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameModel : NSObject

@property int leftValue;
@property int rightValue;
@property int answer;

@property int playerTurn;
@property (nonatomic, strong) Player *currentPlayer;
@property (nonatomic, strong) Player *playerOne;
@property (nonatomic, strong) Player *playerTwo;


- (NSString *)generateQuestion;

- (Player *) nextPlayer;


@end

NS_ASSUME_NONNULL_END
