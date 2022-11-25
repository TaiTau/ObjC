//
//  main.m
//  Run ObjC
//
//  Created by TaiTau on 25/11/2022.
//

//Bài 2.2.6
#import <Foundation/Foundation.h>

@interface Person : NSObject {
   NSString *personName;
   NSString *Gioitinh;
   NSInteger personAge;
}

- (id)initWithName:(NSString *)name andAge:(NSInteger)age andSex:(NSString *)sex;
- (void)print;

@end

@implementation Person

- (id)initWithName:(NSString *)name andAge:(NSInteger)age andSex:(NSString *)sex{
   personName = name;
   Gioitinh = sex;
   personAge = age;
   return self;
}

- (void)print {
   NSLog(@"Name: %@", personName);
    NSLog(@"Sex: %@", Gioitinh);
   NSLog(@"Age: %ld", personAge);
}
- (void)checkAge {
if ([Gioitinh isEqualToString: @"Male"])
{
    if(personAge>18 && personAge<65)
    {
    NSLog(@"Trong độ tuổi lao động");
    }
    else{
         NSLog(@"Không trong độ tuổi lao động");
    }
}
else{
    if(personAge>18 && personAge<60)
    {
    NSLog(@"Trong độ tuổi lao động");
    }
    else{
         NSLog(@"Không trong độ tuổi lao động");
    }
}
}

- (void)checkName {
if(!personName.length){
    NSLog(@"ten rong nha ba");
}
else{
    NSLog(@"Ten khong rong");
}
}

@end

@interface Employee : Person {
   NSString *employeeEducation;
}

- (id)initWithName:(NSString *)name andAge:(NSInteger)age
  andEducation:(NSString *)education;
- (void)print;
@end

@implementation Employee

- (id)initWithName:(NSString *)name andAge:(NSInteger)age
   andEducation: (NSString *)education {
      personName = name;
      personAge = age;
      employeeEducation = education;
      return self;
   }
- (void)print {
   NSLog(@"Name: %@", personName);
   NSLog(@"Age: %ld", personAge);
   NSLog(@"Education: %@", employeeEducation);
}
@end
int main (int argc, const char * argv[])
{
    
       // NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
      NSLog(@"Base class Person Object");
Person *person = [[Person alloc]initWithName:@"Tai" andAge:61 andSex: @"Male"];
[person print];
[person checkName];
[person checkAge];
NSLog(@"Inherited Class Employee Object");
Employee *employee = [[Employee alloc]initWithName:@"Raj"
   andAge:5 andEducation:@"MBA"];
[employee print];

      //  [pool drain];
        return 0;
}
