//
//  RPayManager.h
//  RongPaySDK_Demo
//
//  Created by 杨俊杰 on 2017/6/13.
//  Copyright © 2017年 rongcapital. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void(^CallBackBlcok) (NSString *result);

@interface RPayManager : NSObject



/**
 初始化
 */
+ (void)defaultManager;



/**
 push出收银台

 @param navigationController 导航控制栏
 @param title 订单标题
 @param details 订单详情
 @param orderId 客户订单号
 @param amount 订单金额（单位：分）
 @param customerNo 客户号
 @param operatorNo 操作员号
 */
+ (void)pushCashierWithNavigationController:(UINavigationController *)navigationController
                                      title:(NSString *)title
                                    details:(NSString *)details
                                    orderId:(NSString *)orderId
                                     amount:(NSInteger)amount
                                 customerNo:(NSString *)customerNo
                                   operator:(NSString *)operatorNo
                              callBackBlock:(CallBackBlcok)callBackBlock;




@end
