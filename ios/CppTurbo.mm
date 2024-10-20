#import "CppTurbo.h"

@implementation CppTurbo
RCT_EXPORT_MODULE()

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (NSNumber *)multiply:(double)a b:(double)b {
    NSNumber *result = @(cppturbo::multiply(a, b));

    return result;
}

- (NSString *)reverseString:(NSString *)input {
    std::string inputStr = [input UTF8String];  // Convert NSString to std::string
    std::string reversedStr = cppturbo::reverseString(inputStr);  // Call the C++ function
    NSString *result = [NSString stringWithUTF8String:reversedStr.c_str()];  // Convert back to NSString

    return result;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeCppTurboSpecJSI>(params);
}

- (NSDictionary *)getObjectFromCpp {
    // Example values to be included in the JS object
    double someValue = cppturbo::multiply(5, 3); // Call your C++ function
    std::string reversedStr = cppturbo::reverseString("ReactNative");

    // Create an NSDictionary to represent the JS object
    NSDictionary *result = @{
        @"multipliedValue": @(someValue),  // NSNumber for the number
        @"reversedString": [NSString stringWithUTF8String:reversedStr.c_str()]  // NSString for the string
    };

    return result;  // This NSDictionary will be sent as a JS object in React Native
}

#endif

@end
