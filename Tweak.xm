#define CHECK_TARGET
#define CHECK_EXCEPTIONS
#import <dlfcn.h>
#import "../PS.h"

%ctor {
    if (_isTarget(TargetTypeApps | TargetTypeKeyboardExtensions, @[@"com.apple.WebKit.WebContent", @"kbd"]))
        dlopen("/Library/MobileSubstrate/DynamicLibraries/Emoji10WT/Emoji10WTReal.dylib", RTLD_LAZY);
}
