//
//  EncodingModuleViewController.m
//  Sample
//
//  Created by 冯鸿杰 on 2018/8/21.
//  Copyright © 2018年 vimfung. All rights reserved.
//

#import "EncodingModuleViewController.h"
#import "LuaScriptCore.h"

@interface EncodingModuleViewController ()

@property (nonatomic, strong) LSCContext *context;

@end

@implementation EncodingModuleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.context = [[LSCContext alloc] init];
    [self.context onException:^(NSString *message) {
        
        NSLog(@"lsc exception = %@", message);
        
    }];
    
    [self.context evalScriptFromFile:@"Encoding-Sample.lua"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
            //Url Encode
            [self.context evalScriptFromString:@"Encoding_Sample_urlEncode()"];
            break;
        case 1:
            //Url Decode
            [self.context evalScriptFromString:@"Encoding_Sample_urlDecode()"];
            break;
        default:
            break;
    }
}

@end
