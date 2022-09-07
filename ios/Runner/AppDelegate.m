#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "NSString+Extend.h"
#import "SharePlatformViewFactory.h"

@interface AppDelegate ()
@property (nonatomic, strong) FlutterMethodChannel *methodChannel;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
    
    // 添加注册我们创建的 view ，注意这里的 withId 需要和 flutter 侧的值相同
    NSObject<FlutterPluginRegistrar> *p = [self registrarForPlugin:@"FlutterPlatformTextView"];
    [p registerViewFactory:[[SharePlatformViewFactory alloc] initWithMessenger:p.messenger] withId:@"platform_text_view"];

    //MethodChannel
    NSObject<FlutterPluginRegistrar> *s = [self registrarForPlugin:@"encryptPlugin"];
    self.methodChannel =  [FlutterMethodChannel methodChannelWithName:@"encrypt" binaryMessenger:s.messenger];
    [self.methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"AES128Encrypt"]) {
            NSDictionary *dic = call.arguments;
            NSString *content = dic[@"content"];
            NSString *key = dic[@"key"];
            NSString *de = [content VPN_AES128EncryptWithKey:key];
            NSLog(@"明文:%@,密文:%@",content,de);
            result(de);
        }
    }];
  // Override point for customization after application launch.
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
