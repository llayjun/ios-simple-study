//
//  main.m
//  oc_project
//
//  Created by yinlei zhang on 2020/3/22.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import <Foundation/Foundation.h>

// 方法
BOOL areIntsDifferent(int thing1, int thing2) {
    return thing1 - thing2;
}

// bool
NSString* boolString(BOOL yesNo){
    if (yesNo == NO) {
        return @"NO";
    }
    return @"YES";
}

// C的面向过程编程
typedef enum {
    kCicle,
    kRectangle,
    kEgg,
} ShapeType;

typedef enum {
    kRedColor,
    kYellow,
    kBlack,
} ShapeColor;

// 结构体
typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor color;
    ShapeRect bounds;
} Shape;

// oc 定义接口，参数写在{}中，方法定义在另外
@interface Circle : NSObject {
@private
    ShapeColor fillColor;
    ShapeRect bounds;
}

-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end// Circle

ShapeColor fillColor;
ShapeRect bounds;

// oc接口实现
@implementation Circle

-(void) setFillColor:(ShapeColor)fillColor {
    self -> fillColor = fillColor;
}

- (void)setBounds:(ShapeRect)bounds{
    self -> bounds = bounds;
}

- (void)draw{
    NSLog(@"boundsx%d, boundsy%d, boundswidth%d,boundsheight%d", bounds.x, bounds.y, bounds.width, bounds.height);
}

@end

// 造车例子
@interface Pedal: NSObject
@end// pedal

@implementation Pedal
// 重写description
- (NSString*) description {
    return @"i am a pedal";
}
@end// pedal

@interface Tire : NSObject
@end// tire

@implementation Tire
- (NSString*) description {
    return @"i am a tire";
}
@end// tire

@interface Unicycle : NSObject{
    Tire *tire;
    Pedal *pedal;
}
@end// Unicycle

@interface Engine : NSObject
@end
@implementation Engine
// 自定释放内存
- (NSString *)description
{
    NSString* description1 = [[NSString alloc] initWithFormat:@"String release%d", 4];
    return description1;
}
@end

@interface Car : NSObject
{
    Engine* engine;
    Tire* tires[4];
}

-(void) showToast;
-(void) showToast: (NSString*) string;
@end

@implementation Car

- (id)init
{
    self = [super init];
    if (self) {
        engine = [Engine new];
        tires[0] = [Tire new];
    }
    return self;
}
- (void)showToast{
    
}

- (void)showToast:(NSString *)string{
    
}

-(void) print {
    NSLog(@"%@", tires[0]);
}

@end

// 一些基础的语法使用
void someBase() {
    // 比较函数
    BOOL areDifferent;
    areDifferent = areIntsDifferent(5, 5);
    NSLog(@"are %d and %d different? %@", 5, 5, boolString(areDifferent));
    areDifferent = areIntsDifferent(234, 222);
    NSLog(@"are %d and %d different? %@", 234, 222, boolString(areDifferent));
    NSLog(@"%s", "Hello Object-c");
    // for 循环
    for (int i = 0; i <= 2; i++) {
        NSLog(@"%d\n" ,i);
    }
    // char
    const char *words[4] = {"aardvark", "abass", "abbbbbb", "aasf"};
    int count = 4;
    for (int i = 0; i < count; i ++) {
        NSLog(@"%s is %lu characters long", words[i], strlen(words[i]));
    }
    
    //        FILE *wordFile = fopen("/Users/yinleizhang/Desktop/bullet-screen.js", "r");
    //        char word[100];
    //        while (fgets(word, 100, wordFile)) {
    //            word[strlen(word)- 1] = '\0';
    //            NSLog(@"%s is %lu characters long", word, strlen(word));
    //        }
    //        fclose(wordFile);
    
    // 创建对象
    id shapes[3];
    
    shapes[0] = [Circle new];
    ShapeRect rect0 = {0, 0, 10, 30};
    [shapes[0] setBounds:rect0];
    [shapes[0] setFillColor:kRedColor];
    [shapes[0] draw];
    shapes[1] = [Circle new];
    Car* car = [Car new];
    [car print];
    
    // 定义数组两种方式，不可变数组
    NSArray *array = [NSArray arrayWithObjects:@"one", @"two", nil];
    NSArray *array1 = @[@"one", @"two"];
    NSLog(@"format%@", array1[0]);
    for (NSInteger i = 0; i< [array1 count]; i++) {
        NSLog(@"index %ld has %@", (long)i, array1[i]);
    }
    NSString *string = @"oop:ack:bork:greeble:poines";
    NSArray *chunks = [string componentsSeparatedByString: @":"];
    for (NSInteger i = 0; i < [chunks count]; i++) {
        NSLog(@"string is %@", chunks[i]);
    }
    NSLog(@"string is %@", chunks);
    NSString *string1 = [chunks componentsJoinedByString: @"---"];
    NSLog(@"sting is %@", string1);
    
    // 可变数组
    NSMutableArray *array2 = [NSMutableArray arrayWithCapacity:17];
    for (NSInteger i = 0; i < 5; i++) {
        [array2 addObject: @"aaa"];
    }
    [array2 removeObjectAtIndex:1];
    NSLog(@"array2 %@", array2);
    
    // 枚举
    NSEnumerator *enumerator = [array2 objectEnumerator];
    NSString *string2 = [NSString new];
    while(string2 = [enumerator nextObject]) {
        NSLog(@"NSEnumerator is %@", string2);
    }
    // 快速枚举
    for (NSString *string3 in array2) {
        NSLog(@"String is %@", string3);
    }
    
    // 字典的两种方式
    Tire *tire1 = [Tire new];
    Tire *tire2 = [Tire new];
    Tire *tire3 = [Tire new];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:tire1, @"tire1", tire2, @"tire2", tire3, @"tire3", nil];
    NSDictionary *dictionary1 = @{@"tire1": tire1, @"tire2": tire2, @"tire3": tire3};
    Tire *tireSearch =[dictionary objectForKey:@"tire1"];
    
    // 可变字典
    NSMutableDictionary *dira = [NSMutableDictionary new];
    [dira setObject:tire1 forKey:@"tire1"];
    [dira setObject:tire2 forKey:@"tire2"];
}

// 遍历文件的层次结构
void fileManagerFile() {
    NSFileManager* fileManager = [[NSFileManager alloc]init];
    NSString* home = [@"~" stringByExpandingTildeInPath];
    NSDirectoryEnumerator* direnum = [fileManager enumeratorAtPath:home];
    NSMutableArray* files = [NSMutableArray arrayWithCapacity:42];
    NSString* fileName;
    while (fileName = [direnum nextObject]) {
        if ([[fileName pathExtension] isEqualTo: @"pdf"]) {
            [files addObject: fileName];
        }
    }
    NSEnumerator* fileenum = [files objectEnumerator];
    while (fileName = [fileenum nextObject]) {
        NSLog(@"pdf %@", fileName);
    }
}

// 使用属性property来简化
@interface AllWeather : NSObject{
    float property1;
    float property2;
}



-(void) setProperty1:(float) property1;
-(float) getProperty1;

-(void) setProperty2:(float) property2;
-(float) getProperty2;

@end


@interface myWather : AllWeather

@end

// 使用属性property来简化
@interface AllWeather1 : NSObject

@property (readonly) float property1;
@property (readonly) float property2;

- (void)eat:(NSString *)eatfood drink:(NSString *)waterStr;

- (void)setProperty1:(float)property1 atIndex:(int) index;

@end

@implementation AllWeather1

@synthesize property1;
@synthesize property2;

- (void)eat:(NSString *)eatfood drink:(NSString *)waterStr{
    
}

- (void)setProperty1:(float)property1 atIndex:(int)index{
    
}

@end


// 协议
@protocol Locking<NSObject>

-(void) lock;
-(void) unLock;

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
    }
    return 0;
}

