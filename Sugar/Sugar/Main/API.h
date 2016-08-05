//
//  API.h
//  Sugar
//
//  Created by feepees on 16/8/3.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#ifndef API_h
#define API_h
#define BANNER_API @"http://open3.bantangapp.com/recommend/operationElement?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&os_versions=8.0.2&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //广告接口 GET

#define SELECT_API @"http://open3.bantangapp.com/recommend/index?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&last_get_time=1470191389&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //精选接口 GET

#define ORIGINALSELECT_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=13&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" // 原创精选接口 GET

#define WEEKHOT_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=3&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17"  //一周最热 GET

#define DRESS-UP_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=15&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //美妆&穿搭 GET
#define GIFT_APPI @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=16&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //礼物   GET
#define FOOD_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=8&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17"  //美食 GET

#define DESIGN_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=5&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17"  //设计感 GET
# define ART_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=5&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //文艺  GET

#define STUDENT_API @"http://open3.bantangapp.com/topics/topic/listByScene?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&id=5&os_versions=8.0.2&page=0&pagesize=20&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17"  //学生党 GET

#define mark -------------第二页-----------

# define  ARTICLE_API  @"http://open3.bantangapp.com/topics/topic/listByUsers?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&os_versions=8.0.2&page=0&pagesize=20&screensize=750&sort_type=1&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17"  //文章  GET

//嗮单－－－－－－－－－－－－－－－－－－

#define CLASSIFICATION_API @"http://open3.bantangapp.com/community/post/index?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&os_versions=8.0.2&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //分类  GET

#define RECOMMENDED_API @"http://open3.bantangapp.com/community/post/hotRecommend?app_id=com.jzyd.BanTang&app_installtime=1470124799&app_versions=5.8.5&channel_name=appStore&client_id=bt_app_ios&client_secret=9c1e6634ce1c5098e056628cd66a17a5&device_token=e45a2b51122b0e9737acad0cf97ae73c10b8d2c8f9e4bd83ca37819c20a39c21&os_versions=8.0.2&page=0&pagesize=18&screensize=750&track_device_info=iPhone7%2C2&track_deviceid=B8B8C987-F4D3-4136-89F5-68018BDD0F4D&v=17" //热门推荐 GET

//－－－－－－－－－－－－－－－－－－
#endif /* API_h */
