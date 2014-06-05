//
//  main.m
//  Stringz
//
//  Created by Keith Samson on 6/5/14.
//  Copyright (c) 2014 Keith Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc]init];
        for (int i = 1; i < 10; i++) {
            [str appendString:@"Hello, Keith!\n"];
        }
        
        [str writeToFile:@"/tmp/hello.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:NULL];
        
        NSLog(@"Done writing /tmp/hello.txt");
        
    }
    return 0;
}

