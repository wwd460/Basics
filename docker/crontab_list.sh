# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############
# 京东到家鲜豆任务
35 0,6,12 * * * node /scripts/jd_jddj_bean.js >> /scripts/logs/jd_jddj_bean.log 2>&1
# 京东到家果园水车收水滴任务
0-59/30 * * * * node /scripts/jd_jddj_collectWater.js >> /scripts/logs/jd_jddj_collectWater.log 2>&1
# 京东到家鲜豆庄园收水滴
45 * * * * node /scripts/jd_jddj_getPoints.js >> /scripts/logs/jd_jddj_getPoints.log 2>&1
# 京东到家鲜豆庄园
20 0-23/6 * * * node /scripts/jd_jddj_plantBeans.js >> /scripts/logs/jd_jddj_plantBeans.log 2>&1

# 抢京豆

# 京东极速版红包---自动提现微信现金
20 0,22 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
# 众筹许愿池
20 0,2 * * * node /scripts/jd_wish.js >> /scripts/logs/jd_wish.log 2>&1
# 京喜工厂开团
50 4,13,19 * * * node /scripts/jd_dreamFactory_tuan.js >> /scripts/logs/jd_dreamFactory_tuan.log 2>&1
# 早起福利
30 6 * * * node /scripts/jd_goodMorning.js >> /scripts/logs/jd_goodMorning.log 2>&1
# 半点京豆雨
30 16-23/1 * * * node /scripts/jd_half_redrain.js >> /scripts/logs/jd_half_redrain.log 2>&1
# 整点红包雨
0 0-23/1 * * * node /scripts/jd_super_redrain.js >> /scripts/logs/jd_super_redrain.log 2>&1
# 零食街
18 7,20 * * * node /scripts/jd_lsj.js >> /scripts/logs/jd_lsj.log 2>&1
# 东东乐园
30 7 * * * node /scripts/jd_ddnc_farmpark.js >> /scripts/logs/jd_ddnc_farmpark.log 2>&1
# 京喜赚88
4 2,10 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1
# 积分换话费 
43 5,17 * * * node /scripts/jd_dwapp.js >> /scripts/logs/jd_dwapp.log 2>&1
# 特物
10 9,13,16,19 2-8 11 * node /scripts/jd_superBrand.js >> /scripts/logs/jd_superBrand.log 2>&1
# 东东世界
15 3,16 * * * node /scripts/jd_ddworld.js >> /scripts/logs/jd_ddworld.log 2>&1
# 内容鉴赏官
15 3,6 * * * node /scripts/jd_connoisseur.js >> /scripts/logs/jd_connoisseur.log 2>&1
# 发财大赢家助力
20 1 * * * node /scripts/jd_dyj_help.js >> /scripts/logs/jd_dyj_help.log 2>&1
# 我是大老板
5 0-23/6 * * * node /scripts/jd_wsdlb.js >> /scripts/logs/jd_wsdlb.log 2>&1
# 魔方
11 7,19 * * * node /scripts/jd_mf.js >> /scripts/logs/jd_mf.log 2>&1
# 魔方兑换
0 0 * * * node /scripts/jd_mofang_exchange.js >> /scripts/logs/jd_mofang_exchange.log 2>&1
# 金榜创造营
13 5,19 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
# 特物
23 8,9 * * * node /scripts/jd_productZ4Brand.js >> /scripts/logs/jd_productZ4Brand.log 2>&1
# 芥末签到
11 0,9 * * * node /scripts/jd_jmsign.js >> /scripts/logs/jd_jmsign.log 2>&1
# 芥末赚豪礼
37 0,11 * * * node /scripts/jd_genz.js >> /scripts/logs/jd_genz.log 2>&1
# 幸运扭蛋
24 9 * 10-11 * node /scripts/jd_lucky_egg.js >> /scripts/logs/jd_lucky_egg.log 2>&1
# 1+9
4 4,17 * * * node /scripts/jd_yijiajiu.js >> /scripts/logs/jd_yijiajiu.log 2>&1
# 预售福利机

# 选品官

# 手机狂欢城

# 省钱大赢家翻翻乐
20 0,6-23 * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1
# 发财大赢家
1 6-22/3 * * * node /scripts/jd_fcdyj.js >> /scripts/logs/jd_fcdyj.log 2>&1
# 超级无线店铺抽奖
6 5 * * * node /scripts/jd_lzclient.js >> /scripts/logs/jd_lzclient.log 2>&1
# 超级盒子
24 3,13 * * * node /scripts/jd_cjhz.js >> /scripts/logs/jd_cjhz.log 2>&1
# 京喜牛牛
1 0,9,19,23 * * * node /scripts/jd_nnfls.js >> /scripts/logs/jd_nnfls.log 2>&1
# vivo 

# 推一推
2 12 * * * node /scripts/jd_tyt.js >> /scripts/logs/jd_tyt.log 2>&1




##############长期活动##############
# 签到
7 0,17 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 京豆变动通知
20 21 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
17 1,12,22 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
47 1,12,22 * * * node /scripts/jd_ljd.js >> /scripts/logs/jd_ljd.log 2>&1
# 摇京豆
7 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
15 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 宠汪汪
45 */4 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
20 10 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
25 0-23/3 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪积分兑换京豆
59 7,15,23 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
59 7,15,23 * * * node /scripts/jd_joy_reward_Mod.js >> /scripts/logs/jd_joy_reward_Mod.log 2>&1
# 宠汪汪偷狗粮
40 0-21/6 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 摇钱树及其助力
23 */4 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
0-59/30 * * * node /scripts/jd_moneyTree_heip.js >> /scripts/logs/jd_moneyTree_heip.log 2>&1
# 东东萌宠
35 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 京东种豆得豆
10 7-22/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东全民开红包
#
# 进店领豆
5 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 东东超市
31 1-23/3 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
45 */4 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
15 */4 * * * node /scripts/jd_unsubscriLive.js >> /scripts/logs/jd_unsubscriLive.log 2>&1
# 京东抽奖机
10 4,20 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
21 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 金融养猪
32 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 京喜工厂
50 0-23/2 * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
10 10 * * * node /scripts/jd_jxgckc.js >> /scripts/logs/jd_jxgckc.log 2>&1
# 东东工厂
26 0-23/4 * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 赚京豆(微信小程序)十元街
12 0-23/6 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 京东快递签到
47 1 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 微信小程序京东赚赚
16 2,15 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# 导到所有互助码
23 7 * * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 签到领现金
10 */4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 闪购盲盒
47 8,22 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 京东秒秒币
10 6,21 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
# 美丽研究院
41 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
# 京东极速版签到+赚现金任务
21 1,16 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
# 京喜财富岛
35 7,12,18 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
30 * * * * node /scripts/jd_cfd_loop.js >> /scripts/logs/jd_cfd_loop.log 2>&1
5 * * * * node /scripts/jd_cfd_mooncake.js >> /scripts/logs/jd_cfd_mooncake.log 2>&1
# 京东直播（又回来了）
50 12-14 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
# 京东健康社区
33 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
# 领金贴
15 5 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
# 跳跳乐瓜分京豆
15 0,12,22 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1
# 京喜牧场
15 0-23/3 * * * node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
# 早起赢现金
0 7 * * * node /scripts/jd_morningSc.js >> /scripts/logs/jd_morningSc.log 2>&1
# 清空购物车
0 4,16 * * * node /scripts/jd_cleancart.js >> /scripts/logs/jd_cleancart.log 2>&1
# 店铺签到
10 5,21 * * * node /scripts/jd_dpqd_diy.js >> /scripts/logs/jd_dpqd_diy.log 2>&1
# 领卷中心签到
30 0 * * * node /scripts/jd_ccSign.js >> /scripts/logs/jd_ccSign.log 2>&1
# 京喜签到
20 1,8 * * * node /scripts/jx_sign.js >> /scripts/logs/jx_sign.log 2>&1
# 超级直播间红包雨
0,30 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * * node /scripts/jd_mohe.js.js >> /scripts/logs/jd_mohe.log 2>&1
# 女装盲盒
35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
# 京东天天加速
18 0-23/3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
# 京东价格保护
30 2 * * 0 node /scripts/jd_priceProtect.js >> /scripts/logs/jd_priceProtect.log 2>&1
# 天天提鹅
20 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1

##############默认注释活动##############
# 京东试用
# 30 10 * * * node /scripts/jd_try.js >> /scripts/logs/jd_try.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
# 20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
# 家庭号
# 10 6,7 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
# 京喜购物返红包
# 44 */6 * * * node /scripts/jx_aid_cashback.js >> /scripts/logs/jx_aid_cashback.log 2>&1
