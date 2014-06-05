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
        /*
         -----------------------------------------
         Commenting this section in case of reuse
         -----------------------------------------
         
        NSMutableString *str = [[NSMutableString alloc]init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Hello, Keith!\n"];
        }
        
        //Declare a pointer to an NSError object, but don't instantiate it.
        //The NSError instance will only be created if there is, in fact, an error.
        NSError *error = nil;
        
        //Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmp/hello.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        //Test the returned BOOL, and query the NSError if the write failed
        if (success) {
            NSLog(@"Done writing /tmp/hello.txt");
        } else {
            NSLog(@"Writing /tmp/hello.txt failed: %@", [error localizedDescription]);
        }
         
         -------------------------------------------
        */
        
        NSError *error = nil;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/tmp/hello.txt" encoding:NSASCIIStringEncoding error:&error];
        
        if (!str) {
            NSLog (@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"hello.txt looks like this: %@", str);
        }
        
        
        
    }
    return 0;
}

