//
//  GameModel.h
//  2 _Player_Math
//
//  Created by Matthew Chan on 2019-01-14.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameModel : NSObject

@property int leftValue;
@property int rightValue;
@property int answer;


- (NSString *)generateQuestion;


@end

NS_ASSUME_NONNULL_END
