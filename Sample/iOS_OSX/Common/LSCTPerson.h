//
//  LSCTPerson.h
//  Sample
//
//  Created by 冯鸿杰 on 16/9/22.
//  Copyright © 2016年 vimfung. All rights reserved.
//

#import "LSCObjectClass.h"


@interface LSCTPerson : LSCObjectClass

@property (nonatomic, copy) NSString *name;

@property (nonatomic) BOOL isFriend;

- (void)speak;

- (void)walk;

@end
