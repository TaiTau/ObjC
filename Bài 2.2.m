//
//  Bài 2.2.m
//  Run ObjC
//
//  Created by TaiTau on 25/11/2022.
//

//Bài. 2.2.7


#import <Foundation/Foundation.h>
#include <stdlib.h>
@interface SampleClass : NSObject
{
    NSString *name;
}
- (void)setInternalID;
- (NSString *)getExternalID;
@end
@interface SampleClass()
{
    NSString *internalID;
}
@end
@implementation SampleClass
- (void)setInternalID
{
//int r = arc4random_uniform(74);
    internalID = [NSString stringWithFormat:
                  @"UNIQUEINTERNALKEY%dUNIQUEINTERNALKEY",rand() % 76];
}

- (NSString *)getExternalID
{
    return [internalID stringByReplacingOccurrencesOfString:
            @"UNIQUEINTERNALKEY" withString:@""];
}

@end

int main(int argc, const char * argv[])
{
   // NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass setInternalID];
    NSLog(@"ExternalID: %@",[sampleClass getExternalID]);
   // [pool drain];
    return 0;
}
