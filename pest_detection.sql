/*
 Navicat Premium Data Transfer

 Source Server         : first
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : pest_detection

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/07/2021 16:33:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `classify_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `classify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `disease_id` int(11) NULL DEFAULT NULL COMMENT '所属文章',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`classify_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (22, '水稻', 10, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (23, '疾病', 10, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (24, '防治', 10, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (25, '水稻', 11, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (26, '疾病', 11, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (27, '防治', 11, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (28, '水稻', 12, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (29, '疾病', 12, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (30, '防治', 12, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (31, '水稻', 13, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (32, '疾病', 13, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (33, '防治', 13, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (34, '水稻', 14, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (35, '疾病', 14, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (36, '防治', 14, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (37, '水稻', 15, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (38, '疾病', 15, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (39, '防治', 15, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (40, '水稻', 16, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (41, '疾病', 16, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (42, '防治', 16, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (43, '水稻', 17, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (44, '疾病', 17, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (45, '防治', 17, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (46, '水稻', 18, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (47, '疾病', 18, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (48, '防治', 18, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (49, '水稻', 19, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (50, '疾病', 19, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (51, '防治', 19, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (52, '水稻', 20, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (53, '疾病', 20, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (54, '防治', 20, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (55, '水稻', 21, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (56, '疾病', 21, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (57, '防治', 21, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (58, '水稻', 22, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (59, '疾病', 22, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (60, '防治', 22, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (61, '水稻', 23, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (62, '疾病', 23, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (63, '防治', 23, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (64, '水稻', 24, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (65, '疾病', 24, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (66, '防治', 24, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (67, '水稻', 25, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (68, '疾病', 25, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (69, '防治', 25, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (70, '水稻', 26, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (71, '疾病', 26, '2021-07-20 16:23:20', '2021-07-20 16:23:20');
INSERT INTO `classify` VALUES (72, '防治', 26, '2021-07-20 16:23:20', '2021-07-20 16:23:20');

-- ----------------------------
-- Table structure for dis_image
-- ----------------------------
DROP TABLE IF EXISTS `dis_image`;
CREATE TABLE `dis_image`  (
  `dis_image_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片ID',
  `disease_id` int(11) NOT NULL COMMENT '疾病ID',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`dis_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dis_image
-- ----------------------------
INSERT INTO `dis_image` VALUES (1, 1, 'https://img2.baidu.com/it/u=2007094856,555014445&fm=11&fmt=auto&gp=0.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for disease
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease`  (
  `disease_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '疾病ID',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '疾病名称',
  `explanation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '其他说明',
  `click_num` int(11) NOT NULL DEFAULT 0 COMMENT '访问次数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `disease_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`disease_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease
-- ----------------------------
INSERT INTO `disease` VALUES (10, '水稻——柱香', '危害特征：\n\n1、水稻抽穗前受害：病菌在颖壳内长成米粒状子实体，将花蕊包埋在内，壳内子实体从内外颖的合缝延至壳外，形状不一，外壳渐变黑，同时还有菌丝将小穗缠绕，使小穗不能散开，抽出的病穗直立圆柱状，故称“一柱香”。\n\n2、病穗初淡蓝色，后变白色，上生黑色粒状物，即病菌的子座。\n\n防治方法：\n\n①无病田留种；加强检疫，严禁病区种子调入无病区。\n\n②种子消毒：先在盐水、泥水中预浸种4小时，然后用52～54℃温水浸种10分钟，催芽，播种；或用50%多菌灵可湿性粉剂500倍液浸种48小时，捞出洗净药液，催芽、播种。\n\n③发病初期，选用以下药剂防治：多菌灵盐酸盐，或多菌灵。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3m74jhj608k08jtar02.jpg\n');
INSERT INTO `disease` VALUES (11, '水稻叶鞘腐败病', '危害特征：\n\n秧苗期至抽穗期均可发病，孕穗至抽穗期发病重。剑叶叶鞘生褐色至暗褐色不规则病斑，中间色浅，边缘黑褐色较清晰，多个病斑联合成云纹状病斑，有时有黄晕，后向整个叶鞘上扩展，致叶鞘和幼穗腐烂。\n\n防治方法：\n\n①选种抗病品种；科学管水，底肥足、追肥早、施充分腐熟的农家肥、增施磷钾肥，增强植株抗病能力；合理密植，增加通透性。\n\n②种子消毒：40%多菌灵胶悬剂500倍液浸种48h，或40%禾枯灵可湿性粉剂250倍液，浸种24小时，捞出洗净、催芽、播种。\n\n③发病初期，选用以下药剂防治：戊唑醇；苯甲•丙环唑，或苯菌灵。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3miyvuj608l08kju302.jpg\n');
INSERT INTO `disease` VALUES (12, '水稻干尖线虫病', '危害特征：\n\n1、线虫从芽鞘缝钻入，附于生长点、叶芽及新生嫩叶尖端的细胞外，以吻针刺入细胞吸食汁液，致被害叶形成干尖。\n\n2、苗期症状不明显，在4～5片真叶时偶尔出现叶尖灰白色干枯，扭曲干尖。\n\n3、病株孕穗后干尖更严重，剑叶或其下2～3叶尖端1～8cm渐枯黄，半透明，扭曲干尖，变为灰白或淡褐色，病健部界限明显。\n\n4、湿度大时，干尖叶片展平呈半透明水渍状，随风飘动，露干后又复卷曲。有的病株不显症，但稻穗带有线虫，大多数植株能正常抽穗，但植株矮小，病穗较小，秕粒多，多不孕，穗直立。\n\n防治方法：\n\n①选用无病种子，加强检疫，严禁从病区调运种子。\n\n②种子处理：先将稻种预浸于冷水中24小时，然后放在45～47℃温水中5分钟提温，再放入52～54℃温水中浸10分钟，取出立即冷却，催芽播种。或用16%咪鲜•杀螟丹可湿性粉剂400-700倍液浸种，洗净后催芽播种。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3mv1l2j60hq09sjv902.jpg\n');
INSERT INTO `disease` VALUES (13, '水稻恶苗病', '危害特征：\n\n1、受害稻苗细长、瘦弱、色淡、叶鞘拉长，比正常秧苗高出2/3左右，根系较弱，分蘖慢而少，节间加长，节上生大量的倒生须根，尤其基部节上更多，一般在抽穗前枯死，即使能够抽穗成熟，均穗小粒少，形成白穗。\n\n2、茎秆受害：叶鞘上产生淡红或白色霉粉状物；后期生黑色小点。谷粒受害：严重的变褐，不饱满，颖壳夹缝处生淡红色霉。\n\n防治方法：\n\n①选种抗性品种；清除病残体，及时拔除病株并销毁；增施腐熟的有机肥，增施磷钾肥，提高植株抗病力。\n\n②种子消毒：25%咪鲜胺乳油2000～3000倍液拌种，或50%福美双可湿性粉剂500倍液，浸种72小时，捞出洗净、催芽、播种。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3n6c6bj608o08p3zz02.jpg\n');
INSERT INTO `disease` VALUES (14, '水稻条纹叶枯病', '危害症状：\n\n仅靠灰飞虱传染，一旦获毒可终身并经卵传毒。\n\n苗期发病：初期植株心叶基部出现褪绿黄白斑，后扩展成与叶脉平行的黄色条纹，条纹间仍保持绿色；发病糯、粳稻和高秆籼稻心叶黄白、柔软、卷曲下垂、成枯心状；矮秆籼稻不呈枯心状，出现黄绿相间条纹，分蘖减少，病株提早枯死。\n\n分蘖期发病：初期植株心叶下一叶基部出现褪绿黄斑，后扩展形成不规则黄白色条斑，老叶不显病病株常枯孕穗或穗小畸形不实；籼稻不枯心，糯稻半数表现枯心。拔节后发病：在剑叶下部出现黄绿色条纹，各类型稻均不枯心，但抽穗畸形，结实很少，形成“假白穗”。\n\n防治方法：\n\n①种植抗（耐）病品种；调整播期，移栽期避开灰飞虱迁飞期；防除田边禾本科杂草；秋季收获后耕翻灭茬，降低飞虱越冬数。\n\n②及时治虫，可采用以下药剂杀虫：氯虫•噻虫嗪；吡蚜酮；或噻嗪酮。\n\n③发病初期，可用下列药剂预防：香菇多糖；宁南霉素，或氯溴异氰尿酸。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3njdc4j608n08owhh02.jpg\n');
INSERT INTO `disease` VALUES (15, '水稻白叶枯病', '危害特征：\n\n整个生育期均可受害，苗期、分蘖期受害最重，各个器官均可染病，叶片最易染病。\n\n1、一般有褪绿枯黄斑，天气潮湿时病叶上可见乳白色小点，干后结成黄色小胶粒，很易脱落。在分蘖期开始出现枯心苗，病株心叶或心叶以下1～2层叶出现失水、卷筒、青枯等症状，最后死亡。\n\n2、白叶枯病形成枯心苗后，其他叶片也逐渐青枯卷缩，最后全株枯死，剥开新青卷的心叶或折断的茎部或切断病叶，用力挤压，可见有黄白色菌脓溢出。可分为叶枯、急性凋萎、黄化三种类型。\n\n防治方法：\n\n①加强肥水管理，梅雨季节湿灌，底肥足、追肥早、施充分腐熟的农家肥、增施磷钾肥，增强植株抗病能力；适时适度烤田。\n\n②浸种：采用浸果灵或强氯精浸种，强氯精洗净后常规催芽播种。\n\n③发病初期，用选用以下药剂进行防治：叶枯唑；氯溴异氰尿酸；或农用硫酸链霉素。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3ntpk4j608r08oab602.jpg\n');
INSERT INTO `disease` VALUES (16, '水稻纹枯病', '危害特征：\n\n主要为害叶鞘，叶片次之。\n\n叶鞘染病：初期在近水面处产生暗绿色水浸状边缘模糊小斑，后渐扩大呈椭圆形或云纹形，边缘暗褐，中部呈灰白色半透明状，潮湿时为灰绿色。\n\n叶片染病：病斑也呈云纹状，边缘褪黄，发病快时病斑呈污绿色，叶片很快腐烂。\n\n茎秆染病：症状似叶片，后期呈黄褐色，易折。\n\n穗颈染病：初为湿润状青黑色，常不能抽穗，抽穗的秕谷较多，千粒重下降。湿度大时，病部长出白色网状菌丝，后形成菌核。\n\n防治方法：\n\n①选种抗病品种；打捞菌核，减少菌源；科学管水，贯彻“前浅、中晒、后湿润”的用水原则，避免长期深灌或晒田过度；合理施肥，贯彻“施足基肥，早施追肥，灵活追肥”的原则，增强植株长势；合理密植，增加通透性。\n\n②分蘖后期病穴率达15%即施药防治，可选用下列药剂：苯甲•丙环唑；氟环唑；或已唑醇。\n\n③孕穗期，丛发病率达10%时，病情仍有发展，30%苯甲•丙环唑乳油2400～3000倍液再喷药1次。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3o70s4j608m08ldho02.jpg\n');
INSERT INTO `disease` VALUES (17, '水稻细菌性基腐病', '危害特征：\n\n1、主要为害水稻根节部和茎基部。一般水稻分蘖期开始发病，初期在近土表茎基部叶鞘上产生水浸状椭圆形斑，后扩展为边缘褐色、中间枯白色的不规则形大斑。\n\n2、严重的病株心叶青卷，后枯黄，像螟虫为害枯心苗状，之后病株根节部变黑腐烂，易拔断，有恶臭，甚至叶片自上而下一次枯黄，甚至全株枯黄。\n\n防治方法：\n\n①选种抗耐品种；科学管水，底肥足、追肥早、施充分腐熟的农家肥、增施磷钾肥，增强植株抗病能力；合理密植，增加通透性。\n\n②发病初期，可选用下列药剂：噻菌铜；噻森铜；或50%三氯异氰尿酸，每5～7天喷1次，连喷3～4次。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3oi43jj608m08m0uh02.jpg\n');
INSERT INTO `disease` VALUES (18, '水稻细菌性条斑病', '危害特征：\n\n1、水稻细菌性条斑病主要为害叶片。初为暗绿色水浸状半透明小斑，迅速在叶脉间扩展为黄褐色细线或短虚线状条斑，病斑两端呈浸润型绿色。\n\n2、病斑上常溢出许多露珠状黄色菌脓，干后呈黄色胶状小粒，不易脱落，发病严重时融合成不规则黄褐至枯白大斑，与白叶枯类似，但对光可见许多半透明细条。\n\n3、发病严重时叶片卷曲，田间呈现一片黄白色，引起植株早期死亡或不能抽穗。\n\n防治方法：\n\n①采取以预防为主的综合措施：加强检疫，控制病害传播；选种抗耐品种；科学管水，底肥足、追肥早、施充分腐熟的农家肥、增施磷钾肥，增强植株抗病能力；合理密植，增加通透性。\n\n②浸种：先将种子用清水预浸12小时，再用85%三氯异氰尿酸可湿性粉剂300～500倍液浸种12小时，冼净后催芽播种。\n\n③发病初期：可选用以下药剂进行防治：氯溴异氰尿酸；中生菌素；或三氯异氰尿酸。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3osiwcj608p08nach02.jpg\n');
INSERT INTO `disease` VALUES (19, '水稻细菌性褐条病', '危害症状：\n\n苗期和成株期均可受害。\n\n苗期染病：叶片或叶鞘上出现褐色小斑，后扩展呈紫褐色长条斑，边缘清晰，有时与叶片等长；病苗枯萎或病叶脱落，植株矮小。\n\n成株期染病：先在叶片基部中脉发病，初呈水浸状黄白色，后沿叶脉扩展上达叶尖，下至叶鞘基部形成黄褐至深褐色的长条斑，病组织质脆易折，后全叶卷曲枯死。\n\n叶鞘染病：呈不规则斑块，后变黄褐，最后全部腐烂。心叶发病：不能抽出，死于叶苞内，拔出有腐臭味，用手挤压有乳白至淡黄色菌液溢出。\n\n防治方法：\n\n①建立合理排灌系统，防止大水淹没稻田，及时排水；增施有机肥，氮、磷、钾肥合理配合施用，增强植株抗病能力。\n\n②发病初期，可用下列药剂预防：氯溴异氰尿酸；中生菌素；或三氯异氰尿酸。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3paqpaj608p08o40h02.jpg\n');
INSERT INTO `disease` VALUES (20, '水稻胡麻叶斑病', '危害特征：\n\n从秧苗期至收获期均可发病，稻株地上部均可受害，主要为害叶片。种子芽期受害：芽鞘变褐，芽不抽出，子叶枯死。\n\n叶片染病：初期有褐色小点，渐扩大为芝麻粒大小、中央褐色至灰白，边缘褐色的椭圆病斑，有深浅不同的黄晕；严重时连成不规则大斑；病叶由叶尖向内干枯，死苗上产生黑色霉状物。\n\n叶鞘染病：初期为暗褐色，边缘淡褐色，水渍状椭圆形病斑，后为中心灰褐色的不规则大斑。穗颈和枝梗发病：受害部位暗褐色，造成穗枯。\n\n谷粒染病：早期受害的谷粒灰黑色扩至全粒造成秕谷，后期受害病斑小，边缘不明显；严重时谷粒质脆易碎；湿润时，病部长出黑色绒状霉层。\n\n防治方法：\n\n①深耕灭茬，降低菌源；防除田边杂草；酸性土壤注意排水，适当施用石灰；要浅灌勤灌；增施腐熟的有机肥，增施磷钾肥，提高植株抗病力。\n\n②种子消毒：25%咪鲜胺乳油2000～3000倍液，或50%福美双可湿性粉剂500倍液，浸种48小时，捞出洗净、催芽、播种。\n\n③在抽穗至乳熟阶段, 以保护剑叶、穗颈和谷粒不受侵染，在水稻破口前4～7天和齐穗期各喷1次，可用下列药剂预防：苯醚甲环唑•丙环唑；嘧菌酯，或异稻瘟净。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3pla10j608n08ladj02.jpg\n');
INSERT INTO `disease` VALUES (21, '水稻赤枯病', '危害症状：\n\n1、水稻赤枯病的发生内因是稻株体内钾含量不足，营养比例失调，秧苗素质差。发病植株外部的典型症状是：叶片上产生大小不等的赤褐色铁锈状斑点，严重时聚合成斑块或条状。\n\n2、斑点最先从下部老叶尖端产生，然后向下逐渐变赤褐色，最后全叶枯死；由下部老叶逐渐向上部叶片蔓延，严重者全株只有少数新叶保持绿色，远望似火烧状。\n\n3、由缺素引起的缺钾型和缺磷型是生理性的。\n\n4、中毒型赤枯主要发生在长期浸水。\n\n防治方法：\n\n1、改良土壤，加深耕作层，增施有机肥，提高土壤肥力，改善土壤团粒结构。\n\n2、绿肥做基肥，不宜过量，耕翻不能过迟；施用充分腐熟的有机肥，早施钾肥、磷肥，忌追肥单施氮肥。\n\n3、改造低洼浸水田，做好排水沟；早稻要浅灌勤灌，及时耘田，增加土壤通透性。\n\n4、发病稻田要立即排水，酌施石灰，轻度搁田，促进浮泥沉实，以利新根早发、水稻孕穗期至灌浆期叶面喷施多功能高效液肥隔15天1次。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3pwzwaj608j08l76v02.jpg\n');
INSERT INTO `disease` VALUES (22, '水稻霜霉病', '危害特征：\n\n1、秧苗期是水稻主要感病期，秧田后期开始显症，分蘖盛期症状明显。\n\n2、叶片初期为黄白小斑点，后变为表面不规则条纹，斑驳花叶；心叶淡黄，卷曲，不易抽出；下部老叶逐渐枯死；\n\n3、叶鞘略松软，表面有不规则波纹或产生皱折、扭曲，分蘖减少；根系发育不良，植株矮缩。\n\n4、不能孕穗或有扭曲畸形穗，穗小不实。\n\n防治方法：\n\n①选地势较高地块做秧田，建好排水灌溉系统，防止淹苗；及时清除杂草、病苗，控制病害蔓延。\n\n②发病初期，可选用下列药剂防治：甲霜灵；烯酰吗啉，或恶霜灵•代森锰锌。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3q9j7hj605p07dq4402.jpg\n');
INSERT INTO `disease` VALUES (23, '水稻黄萎病', '危害症状：\n\n1、主要靠黑尾叶蝉、二点黑尾叶蝉、二条黑尾叶蝉等传毒。叶片变薄，质地较柔软，褪绿成为浅黄色，植株分蘖猛增，矮缩丛生状，根系发育不良。苗期染病的植株矮缩不能抽穗。\n\n2、后期染病的发病轻，主要表现为分蘖增多，簇生，个别病株出现高节位分枝，叶片似竹叶状。\n\n防治方法：\n\n①选种抗病、抗虫品种；易染病的苗期与叶蝉活动高峰期错开。\n\n②可在育秧期、返青分蘖期喷洒杀虫剂，可选用下列药剂：吡虫啉；高效氯氟氰菊酯；氯虫•噻虫嗪，或叶蝉散。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3qlkbyj60br07iwh902.jpg\n');
INSERT INTO `disease` VALUES (24, '水稻黑条矮缩病', '危害特征：\n\n该病主要靠灰飞虱传播，白背飞虱、白带飞虱次之。病株分蘖增加，叶片短宽、僵直、浓绿，叶背的叶脉和茎秆上初为蜡白色，后变褐色的短条瘤状隆起，不抽穗或穗小，结实不良。\n\n苗期发病：心叶生长缓慢，叶片短宽、僵直、浓绿，叶脉有不规则蜡白色瘤状突起，后变黑褐色。根短小，植株矮小，不抽穗，常提早枯死。\n\n分蘖期发病：新生分蘖先显症，主茎和早期分蘖尚能抽出短小病穗，但病穗缩藏于叶鞘内。\n\n拔节期发病：剑叶短阔，穗颈短缩，结实率低。叶背和茎秆上有短条状瘤突。\n\n防治方法：\n\n①选种抗（耐）病品种；清除田边杂草。\n\n②及时治虫，可采用以下药剂杀虫：氯虫•噻虫嗪；吡蚜酮；或噻嗪酮。\n\n③发病初期，可用下列药剂缓解：宁南霉素；香菇多糖，或几丁聚糖。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3r5sazj608l08k40502.jpg\n');
INSERT INTO `disease` VALUES (25, '稻曲病', '危害特征：\n\n1、只发生于穗部，为害谷粒。受害谷粒内形成菌丝块，内外颖裂开，露出淡黄色块状突起物，后渐膨大包裹全颖，呈黑绿色。\n\n2、初外包一层薄膜，后破裂，散生墨绿色粉末，即病菌的厚垣孢子，有的两侧生黑色扁平菌核，风吹雨打易脱落。\n\n防治方法：\n\n①选种抗耐品种；避免病田留种，深耕翻埋菌核，发病时摘除并销毁病粒；科学管水，底肥足、追肥早、施充分腐熟的农家肥、增施磷钾肥，增强植株抗病能力；合理密植，增加通透性。\n\n②药剂拌种，可亩用3%苯醚甲环唑悬浮种衣剂50ml拌种。\n\n③发病初期，可选用以下药剂防治：戊唑醇；肟菌•戊唑醇；或腈苯唑。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3rf94zj608m08habs02.jpg\n');
INSERT INTO `disease` VALUES (26, '稻瘟病', '描述：\n稻瘟病又称稻瘟病、火瘟、磕头瘟。稻瘟病发生在中国所有水稻产区。疫年一般减产10-20%，严重时减产40-50%，甚至不收粮食。稻瘟病发生在整个水稻生育期。根据水稻受害的阶段和部位不同 ，\n可分为苗瘟、叶瘟、节瘟、穗颈瘟和粒瘟。其中，穗颈瘟对水稻产量的影响最大。[防治方法]防治策略以种植高产抗病品种、减少菌源为前提、加强健康栽培为重点、化学防治为辅助综合措施。\n培育抗病品种：\n（1）定期轮作；\n  (2) 合理分配；\n  (3)多主微效抗病基因的应用。\n减少细菌来源：\n（1）不使用带菌种子；\n(2)及时处理病害秸秆；\n(3)种子处理，可用80%大蒜素溶液浸泡种子2-3天或85%强氯精液浸泡种子0.5-1天。\n改进栽培方法，加强水肥管理：\n（1）合理施肥，不偏不倚过量施氮肥；\n(2)合理排灌、水肥调控、促控相结合。农药防治：苗瘟防治一般在3-4叶期或移栽前5天施用；穗颈瘟防治可从破穗期喷一次，然后可根据天气情况在全抽穗期施第二次农药。常用药物有：春来霉素、多菌灵、嘧啶、氰胺等。\n危害特征：\n\n因为害时期、部位不同分为苗瘟、叶瘟、节瘟、穗颈瘟、谷粒瘟。\n\n苗瘟：发生于三叶前，病苗黄褐色枯死。\n\n叶瘟：慢性型病斑，多为梭形，边缘褐色，中央灰白色，有黄晕，有褐色坏死线向两端延伸；急性型病斑，一般感病品种上发生，形成暗绿色近圆形或椭圆形病斑，叶片两面都产生褐色霉层。\n\n节瘟：常在抽穗后发生，初期产生褐色小点，后渐绕节扩展，使整个节变黑坏死，易折断，发生早的形成枯白穗。\n\n穗颈瘟：初形成褐色小点，放展后使穗颈部变褐，也造成枯白穗，发病晚的造成秕谷。\n\n谷粒瘟：边缘褐色、中部灰白色病斑。\n\n防治方法：\n\n①选种抗病品种；科学管水，底肥足、追肥早、施充分腐熟的农家肥、增施磷钾肥，增强植株抗病能力；合理密植，增加通透性。\n\n②发病初期，选用以下药剂防治：稻瘟灵；硫磺•三环唑；或三环唑，重病区需防治2次，间隔期为7～10天。', 0, '2021-07-20 16:23:20', '2021-07-20 16:23:20', 'http://ww1.sinaimg.cn/large/007ee8RVgy1gsmo3sc7zcj608l08lgnb02.jpg\n');

-- ----------------------------
-- Table structure for history_record
-- ----------------------------
DROP TABLE IF EXISTS `history_record`;
CREATE TABLE `history_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '历史记录ID',
  `disease_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '疾病名称',
  `use_time` datetime(0) NOT NULL COMMENT '使用时间',
  `user_id` int(11) NOT NULL COMMENT '用户id 外键',
  `accuracy` float NOT NULL COMMENT '准确率',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户上传图片',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message_board
-- ----------------------------
DROP TABLE IF EXISTS `message_board`;
CREATE TABLE `message_board`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复',
  `theme` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `dis_id` int(11) NOT NULL DEFAULT -1 COMMENT '文章下回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_board
-- ----------------------------
INSERT INTO `message_board` VALUES (2, 2, '测试一下\n', NULL, NULL, '2021-07-19 15:09:29', '2021-07-19 15:09:29', 1);
INSERT INTO `message_board` VALUES (3, 2, 'tmd\n', NULL, NULL, '2021-07-19 16:07:18', '2021-07-19 16:07:18', -1);
INSERT INTO `message_board` VALUES (4, 2, 'sb\n', NULL, NULL, '2021-07-19 16:07:19', '2021-07-19 16:07:19', -1);
INSERT INTO `message_board` VALUES (7, 2, '行\n', NULL, NULL, '2021-07-20 15:12:40', '2021-07-20 15:12:40', 6);
INSERT INTO `message_board` VALUES (8, 2, '说得好\n', NULL, NULL, '2021-07-20 16:27:29', '2021-07-20 16:27:29', 26);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '性别 0表示男 1表示女',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '积分',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `is_admin` int(1) NOT NULL DEFAULT 0 COMMENT '0表示普通用户 1表示管理员',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐加密',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'luochuang', 'f1a2775facdce810dda375989-259ac3b60b686c-f34da76', '0', NULL, 'https://img1.baidu.com/it/u=2467066818,982285051&fm=26&fmt=auto&gp=0.jpg', 0, NULL, NULL, NULL, 1, '17fd8d39-9308-477e-9aad-b01c7a507410', NULL, NULL);
INSERT INTO `user` VALUES (2, '魏博彦', '34f34a4d31b150c5b52ecbe23-88750aaecac947-ed4af46', '0', NULL, 'https://img1.baidu.com/it/u=2467066818,982285051&fm=26&fmt=auto&gp=0.jpg', 0, '2621955028@qq.com', '15171730025', NULL, 1, '44db0bee-7ac9-44b3-bf4c-d9b89fd9ddc1', '2021-07-19 15:09:10', '2021-07-19 15:09:10');
INSERT INTO `user` VALUES (3, '华好文', '7006f2de166980f842141ffcb-946fc2fc62f96b-bb4bcac', '0', NULL, 'https://img1.baidu.com/it/u=2467066818,982285051&fm=26&fmt=auto&gp=0.jpg', 0, NULL, NULL, NULL, 0, '0fe6044f-6269-4a66-90df-f59e6ce78251', '2021-07-20 00:30:06', '2021-07-20 00:30:06');
