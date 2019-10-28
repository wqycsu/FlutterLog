#import "LogPlugin.h"
#import <log/log-Swift.h>

@implementation LogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLogPlugin registerWithRegistrar:registrar];
}
@end
