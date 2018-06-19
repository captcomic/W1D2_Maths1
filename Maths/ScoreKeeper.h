//
//  ScoreKeeper.h
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger wrong;

- (NSString *)score;


@end
