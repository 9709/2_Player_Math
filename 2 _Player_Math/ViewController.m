//
//  ViewController.m
//  2 _Player_Math
//
//  Created by Matthew Chan on 2019-01-14.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionDisplay;
@property (weak, nonatomic) IBOutlet UILabel *inputDisplay;
@property (weak, nonatomic) IBOutlet UILabel *feedbackDisplay;

@property (weak, nonatomic) IBOutlet UILabel *currentScoreDisplay;
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreDisplay;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreDisplay;

@property (nonatomic, strong) GameModel *gameModel;


@end

// ================================================= Implementation ============================================================================


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [GameModel new];
    self.gameModel.currentPlayer.playerScore = self.gameModel.currentPlayer.playerScore;

    self.player1ScoreDisplay.text = [NSString stringWithFormat:@"%li", (long)self.gameModel.currentPlayer.playerScore];
    self.currentScoreDisplay = self.player1ScoreDisplay;
    
    self.questionDisplay.text = [self.gameModel generateQuestion];

}


// ================================================= Button Presses ============================================================================

- (IBAction)button1Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"1"];
}

- (IBAction)button2Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"2"];
}

- (IBAction)button3Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"3"];
}

- (IBAction)button4Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"4"];
}

- (IBAction)button5Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"5"];
}

- (IBAction)button6Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"6"];
}

- (IBAction)button7Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"7"];
}

- (IBAction)button8Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"8"];
}

- (IBAction)button9Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"9"];
}

- (IBAction)button0Pressed:(UIButton *)sender {
    self.inputDisplay.text =[self.inputDisplay.text stringByAppendingString:@"0"];
}

// ================================================= Enter button pressed ============================================================================


- (IBAction)buttonEnterPressed:(UIButton *)sender {
    
    // check and update score
    if (self.gameModel.answer == self.inputDisplay.text.intValue) {
        self.feedbackDisplay.text = @"Correct!";
        self.gameModel.currentPlayer.playerScore += 1;
        self.currentScoreDisplay.text = [NSString stringWithFormat:@"%li", (long)self.gameModel.currentPlayer.playerScore];
    } else {
        self.feedbackDisplay.text = @"Wrong!";
        self.gameModel.currentPlayer.playerScore -= 1;
        self.currentScoreDisplay.text = [NSString stringWithFormat:@"%li", (long)self.gameModel.currentPlayer.playerScore];
    }
    
    self.inputDisplay.text = @"";
    [self.gameModel nextPlayer];
    self.questionDisplay.text = [self.gameModel generateQuestion];
    
    if ([self.currentScoreDisplay isEqual:self.player1ScoreDisplay]) {
        self.currentScoreDisplay = self.player2ScoreDisplay;
    } else {
        self.currentScoreDisplay = self.player1ScoreDisplay;
    }
    
}

//-(void)updateView {
//     Update the score label from the game model
//     Update the
//     Update the player turn label from the game model
//}

@end
