
//  Robot.h
//  objective-c_hw6
//
//  Created by Eugene Zvyagin on 03.11.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject<NSCoding>

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;
@property (nonatomic, strong) NSString *name;

@end

NS_ASSUME_NONNULL_END
