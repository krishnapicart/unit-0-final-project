//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface TicTacToe : NSObject

-(void) setGameLevel: (NSNumber  *)gameLevel;
-(NSNumber *)gameLevel;

-(void) setUserMode: (NSNumber  *)userMode;
-(NSNumber *)userMode;

@end


@implementation TicTacToe

    NSNumber *_gameLevel;
    NSNumber *_userMode;


-(void) setGameLevel:(NSNumber *)gameLevel{
    _gameLevel = gameLevel;
}


-(NSNumber *) gameLevel {
    return _gameLevel;
}


-(void) setUserMode: (NSNumber *)userMode{
    _userMode = userMode;
}
    
-(NSNumber *) userMode {
    return _userMode;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        
        
        
        //create and initialize mutableArray
        NSMutableArray *boxes = [NSMutableArray arrayWithCapacity:9];
        
        
       
        NSString *ns_oXchoice ;
        
        while (true) {
             char *oXchoice;
            NSLog(@"Choose x or o: ");
            scanf("%s", oXchoice);
            fpurge(stdin);
            
            
            // convert userOption to nsstring
            ns_oXchoice = [NSString stringWithCString: oXchoice encoding: NSASCIIStringEncoding];
            

            
            
            //check nsConversion for good input x/o, regject everything else
            if ([ns_oXchoice length] == 1 && ([ns_oXchoice isEqualToString:@"x"] || [ns_oXchoice isEqualToString:@"o"])) {
                NSLog(@"This is your choice: %@",ns_oXchoice);
                break;
            }
            else  {
                NSLog (@"Wrong choice! ");
                continue;
            } //end ns_oXchoice filter check

        
        
        
        
        
        
        
        
        
        
        
        
        for (int i=0; i<9; i++) {
            boxes[i] = @" ";
        }
        
        //get a number a number from user [1-9]
        int number;
        
        //create grid size; (9 = 3x3 grid)
        for (int i =0; i<9; i++){
            
            
            //run game until all boxes are filled up
            while ([boxes[i] isEqualTo:@" "]) {
                printf ("Enter a number ");
                scanf("%d", &number);
                
                
                //check for empty boxes before entering user selected options
                if ([boxes[number-1] isNotEqualTo:@" "]){
                    NSLog(@"please choose another box");
                }
                
                
                //if box is empty enter user selection
                else if ([boxes[number-1] isEqualTo:@" "]){
                    boxes[number-1] = ns_oXchoice;
                }
                
                //working grid for playing the game
                NSLog (@" %@ | %@ | %@ ", boxes[0],boxes[1],boxes[2]);
                NSLog (@"-----------");
                NSLog (@" %@ | %@ | %@ ", boxes[3],boxes[4],boxes[5]);
                NSLog (@"-----------");
                NSLog (@" %@ | %@ | %@ ", boxes[6],boxes[7],boxes[8]);
                NSLog (@"\n\n\n\n");
                
                
                if ([ns_oXchoice isEqualToString:@"x"])
                    ns_oXchoice = @"o";
                else
                    (ns_oXchoice = @"x");
                
            }
            
            
        }//end of for LOOP
            
        //display grid numbers for users and instructions
        NSLog (@" 1 | 2 | 3");
        NSLog (@"-----------");
        NSLog (@" 4 | 5 | 6");
        NSLog (@"-----------");
        NSLog (@" 7 | 8 | 9");
        NSLog (@"\n");
        
        
        //filter user input; run loop until required data is entered
        
        } // end of while
        
        
        TicTacToe *user1 = [[TicTacToe alloc] init];
        
       [user1 setGameLevel:ns_oXchoice];
    
    }
    return 0;
}



//
//8:30
//
////
////  main.m
////  TicTacToe
////
////  Created by Michael Kavouras on 6/25/15.
////  Copyright (c) 2015 Mike Kavouras. All rights reserved.
////
//#import <Foundation/Foundation.h>
//
//
//@interface TicTacToe : NSObject
//
//-(void) setName: (NSString *)name;
//-(NSString *)name;
//
//-(void) setOxChoice: (NSString *)oxChoice;
//-(NSString *)oxChoice;
//
//@end
//
//
//@implementation TicTacToe
//NSString *_name;
//NSString *_oxChoice;
//
//-(void) setName: (NSString *)name{
//    _name = name;
//}
//
//-(NSString *) name {
//    return _name;
//}
//
//
//-(void) setOxChoice: (NSString *)oxChoice{
//    _oxChoice = oxChoice;
//    
//    //create and initialize mutableArray
//    NSMutableArray *boxes = [NSMutableArray arrayWithCapacity:9];
//    for (int i=0; i<9; i++) {
//        boxes[i] = @" ";
//    }
//    
//    //get a number a number from user [1-9]
//    int number;
//    
//    //create grid size; (9 = 3x3 grid)
//    for (int i =0; i<9; i++){
//        
//        
//        //run game until all boxes are filled up
//        while ([boxes[i] isEqualTo:@" "]) {
//            printf ("Enter a number ");
//            scanf("%d", &number);
//            
//            
//            //check for empty boxes before entering user selected options
//            if ([boxes[number-1] isNotEqualTo:@" "]){
//                NSLog(@"please choose another box");
//            }
//            
//            
//            //if box is empty enter user selection
//            else if ([boxes[number-1] isEqualTo:@" "]){
//                boxes[number-1] = oxChoice;
//            }
//            
//            //working grid for playing the game
//            NSLog (@" %@ | %@ | %@ ", boxes[0],boxes[1],boxes[2]);
//            NSLog (@"-----------");
//            NSLog (@" %@ | %@ | %@ ", boxes[3],boxes[4],boxes[5]);
//            NSLog (@"-----------");
//            NSLog (@" %@ | %@ | %@ ", boxes[6],boxes[7],boxes[8]);
//            NSLog (@"\n\n\n\n");
//            
//            
//            if ([oxChoice isEqualToString:@"x"])
//                oxChoice = @"o";
//            else
//                (oxChoice = @"x");
//            
//            
//            
//            
//            
//        }
//        
//        
//    }//end of for LOOP
//    
//    
//    
//}
//@end
//
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        
//        int singleOrMultiplayer;
//        int singlePlayerLevel, multiplePlayerLevel;
//        char player1Name[30], player2Name[30];
//        NSString *nsConversion ;
//        
//        
//        while (true) {
//            NSLog (@"1. Single player");
//            NSLog (@"2. Multiple players");
//            scanf("%d", &singleOrMultiplayer);
//            fpurge(stdin);
//            
//            
//            if (singleOrMultiplayer == 1) {
//                NSLog (@"1. Level 1: Computer is totally dumb.");
//                NSLog (@"2. Level 2: Computer is smarter.");
//                NSLog (@"3. Level 3: You MAY win (only when you start).");
//                NSLog (@"4. Level 4: Computer NEVER loses.");
//                scanf ("%d", &singlePlayerLevel);
//                break;
//            }
//            else if (singleOrMultiplayer == 2) {
//                NSLog (@"1. Level 1: Easy level");
//                NSLog (@"2. Level 2: Loose your turn if you pick up an occupied box");
//                scanf ("%d", &multiplePlayerLevel);
//                break;
//            }
//            else if ((singleOrMultiplayer != 1) || (singleOrMultiplayer != 2)) {
//                NSLog (@"Wrong choice! ");
//                continue;
//            }
//            
//        } //end of while
//        
//        
//        if (singleOrMultiplayer == 1) {
//            NSLog(@"Player 1 Name:  ");
//            scanf ("%s", player1Name);
//            fpurge(stdin);
//            
//            if (singlePlayerLevel == 1) {
//                
//            } //end of if (singlePlayerLevel == 1)
//            else if (singlePlayerLevel == 2) {
//                
//            } //end of if (singlePlayerLevel == 2)
//            
//            else if (singlePlayerLevel == 3) {
//                
//            } //end of if (singlePlayerLevel == 3)
//            
//            else if (singlePlayerLevel == 2) {
//                
//            } //end of if (singlePlayerLevel == 3)
//            
//            else if (singlePlayerLevel == 4) {
//                
//            } //end of if (singlePlayerLevel == 4)
//            
//            
//            
//        } // end of if (singleOrMultiplayer == 1)
//        
//        
//        else if (singleOrMultiplayer == 2) {
//            NSLog(@"Player 1 Name:  ");
//            scanf ("%s", player1Name);
//            NSLog(@"Player 2 Name:  ");
//            scanf ("%s", player2Name);
//            fpurge(stdin);
//            
//            
//            if (multiplePlayerLevel == 1) {
//                // play the game without loosing your turn
//            } //end of if (multiplePlayerLevel == 1)
//            
//            else if (multiplePlayerLevel == 2) {
//                // play the game and loose your turn
//            } // end of if (multiplePlayerLevel == 2)
//            
//            
//            
//        } // end of if (singleOrMultiplayer == 2)
//        
//        
//        //display grid numbers for users and instructions
//        NSLog (@" 1 | 2 | 3");
//        NSLog (@"-----------");
//        NSLog (@" 4 | 5 | 6");
//        NSLog (@"-----------");
//        NSLog (@" 7 | 8 | 9");
//        NSLog (@"\n");
//        
//        
//        char * userOption;
//        
//        while (true) {
//            
//            NSLog(@"Choose x or o: ");
//            scanf("%s", userOption);
//            fpurge(stdin);
//            
//            // convert userOption to nsstring
//            nsConversion = [NSString stringWithCString: userOption encoding: NSASCIIStringEncoding];
//            
//            
//            //check nsConversion for good input x/o, regject everything else
//            if ([nsConversion length] == 1 && ([nsConversion isEqualToString:@"x"] || [nsConversion isEqualToString:@"o"])) {
//                NSLog(@"This is your choice: %@",nsConversion);
//                break;
//            }
//            else  {
//                NSLog (@"Wrong choice! ");
//                continue;
//            } //end nsConversion filter check
//            
//        } // end of while
//        
//        
//        TicTacToe *user1 = [[TicTacToe alloc] init];
//        
//        [user1 setOxChoice:nsConversion];
//        
//    }
//    return 0;
//}
