-- create database if not exists CFA_102_04;

use CFA_102_04;

set FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS APPEAL;
DROP TABLE IF EXISTS SHOPPING_CART;
DROP TABLE IF EXISTS ORDER_DETAIL;
DROP TABLE IF EXISTS ORDER_FORM;
DROP TABLE IF EXISTS PAY_METHOD;
DROP TABLE IF EXISTS LOGISTICS;
DROP TABLE IF EXISTS PRODUCT_PROMOTIONS_DETAIL;
DROP TABLE IF EXISTS TRACK_PRODUCT;
DROP TABLE IF EXISTS WEB_PADE_DATA;
DROP TABLE IF EXISTS NEWS;
DROP TABLE IF EXISTS SHOPPING_INFORMATION;
DROP TABLE IF EXISTS EMP_PURVIEW;
DROP TABLE IF EXISTS EMP_FUNCTION;
DROP TABLE IF EXISTS FORUM_ARTICLE_REPORT;
DROP TABLE IF EXISTS FORUM_ARTICLE;
DROP TABLE IF EXISTS FOLLOW_PET;
DROP TABLE IF EXISTS GENERAL_MEMBER_PET_PHOTOS;
DROP TABLE IF EXISTS ADOPT_MEMBER_REPORT;
DROP TABLE IF EXISTS STORED_VAL_RECORD;
DROP TABLE IF EXISTS PET_CLASS_LIST;
DROP TABLE IF EXISTS ADOPT_PET_PHOTO;
DROP TABLE IF EXISTS ADOPT_APPOINT_FORM;
DROP TABLE IF EXISTS ADOPT_MEMBER_NEWS;
DROP TABLE IF EXISTS EMP;
DROP TABLE IF EXISTS ADOPT_APPLY;
DROP TABLE IF EXISTS FORUM_ARTICLE_CLS;
DROP TABLE IF EXISTS RESERVE_PET;
DROP TABLE IF EXISTS GENERAL_MEMBER_PET;
DROP TABLE IF EXISTS ADOPT_PET;
DROP TABLE IF EXISTS ADOPT_MEMBER; 
DROP TABLE IF EXISTS GENERAL_MEMBER;
DROP TABLE IF EXISTS PET_CLASS;
DROP TABLE IF EXISTS PRODUCT_PHOTOS;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS PRODUCT_TYPE;
DROP TABLE IF EXISTS PROMOTIONS;

set FOREIGN_KEY_CHECKS = 1;
-- set auto_increment_offset=1;

create table GENERAL_MEMBER (
	GEN_MEB_NO int not null comment '一般會員編號' primary key auto_increment,
    	MEB_NAME varchar(10) not null comment '會員姓名',
    	MEB_PHONE varchar(10) comment '會員手機號碼',
    	MEB_BIRTHDAY date comment '會員生日',
    	MEB_PHOTO longblob comment '會員照片',
    	MEB_COMMENT varchar(65) comment '會員簡介',
    	MEB_ADDRESS varchar(65) comment '會員地址',
    	MEB_EMAIL varchar(30) not null comment 'EMAIL',
    	MEB_ACCOUNT varchar(16) not null comment '帳號',
		MEB_PASSWORD varchar(16) not null comment '密碼',
    	MEB_GENDER char(1) not null comment '性別',
    	MEB_MONEY int not null comment '現今帳戶餘額',
    	POST_PERMISSION char(1) not null comment '發文權限'
);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Kiki','kiki1234@gmail.com','kiki851209','8654321',0,500,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('David','david1994@gmail.com','david760805','vvv7890',1,10000,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Ollie','ollie56799@gmail.com','ollie46890','ffasa5612',1,0,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Jasper','jasper1234@gmail.com','jasperlin1245','sdsdds123',1,6000,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Ford','ford45454@gmail.com','fordchen3306','dewdewd56',1,200,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Kiki','kiki1234@gmail.com','kiki851209','8654321',0,500,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('David','david1994@gmail.com','david760805','vvv7890',1,10000,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Ollie','ollie56799@gmail.com','ollie46890','ffasa5612',1,0,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Jasper','jasper1234@gmail.com','jasperlin1245','sdsdds123',1,6000,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Lala','ford45454@gmail.com','fordchen800','ffrffr',1,2003,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Ford','ford45454@gmail.com','fordchen54088','ewewee',1,2200,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Mary','mary45454@gmail.com','marychung1111','ujujju',0,4200,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('John','john4455454@gmail.com','johnchou3306','dedded',1,7200,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Jason','jason43213@gmail.com','jasonkhen3678','dewdewd56',1,4200,1);
insert into GENERAL_MEMBER(MEB_NAME,MEB_EMAIL,MEB_ACCOUNT,MEB_PASSWORD,MEB_GENDER,MEB_MONEY,POST_PERMISSION)
values('Jennie','jennie33454@gmail.com','jenniechan986','dededewdew',0,1200,1);

create table PROMOTIONS(
PROMOT_NO int not null auto_increment comment '活動編號' primary key,
PROMOT_NAME	varchar(20)	comment '活動名稱',
PROMOT_DATE_START date comment '活動開始日期',		
PROMOT_DATE_END	date comment '活動結束日期',		
PROMOT_STATUS char(1) not null comment '活動狀態',
PROMOT_TYPE	char(1) not null comment '活動種類',
PROMOT_DISCOUNT_TYPE char(1) not null comment '折扣方式',
PROMOT_DISCOUNT numeric(3,2) comment '折數',
PROMOT_REDUCE int comment '減價',		
PROMOT_COMMENT varchar(65) comment '活動描述',	
PROMOT_PHOTO longblob comment '活動圖片'-- 存路徑，商城行銷照片資料夾
);
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('盛大開幕',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('快閃概念店',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('好評延長',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('早鳥優惠',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
 insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('感恩特企',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('激安特區',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
 insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('乾乾罐罐買起來',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('毛小孩不顧家',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('躲貓貓',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');
insert into PROMOTIONS(PROMOT_NAME,PROMOT_DATE_START,PROMOT_DATE_END,PROMOT_STATUS,PROMOT_TYPE,PROMOT_DISCOUNT_TYPE,PROMOT_DISCOUNT,PROMOT_COMMENT)
 values('搖尾時間',STR_TO_DATE('2021-08-24','%Y-%m-%d'),STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1','0','0','8.8','寵一而忠開幕特別企劃商品全館88折');

create table PRODUCT_PROMOTIONS_DETAIL(
PRODUCT_PRO_DETAIL_NO int not null auto_increment comment '個別商品活動編號' primary key,
PROMOT_NO int comment '行銷活動編號',
PRODUCT_NO int comment '商品編號',
PRODUCT_PRO_PRICE int comment '原價',		
PRODUCT_PRO_SPECIAL_PRICE int comment '特價'-- 設定時在前端輸入折扣方式和數字，最終將結果存入欄位
);
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('1','7001','1000','888');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('2','7002','999','880');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('3','7003','880','777');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('4','7004','1200','770');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('5','7005','1000','666');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('6','7006','799','660');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('7','7010','990','555');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('8','7011','770','550');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('9','7007','888','444');
insert into PRODUCT_PROMOTIONS_DETAIL(PROMOT_NO,PRODUCT_NO,PRODUCT_PRO_PRICE,PRODUCT_PRO_SPECIAL_PRICE)
 values('10','7008','600','440');
 
 
 create table ORDER_FORM(
ORDER_NO int not null  auto_increment comment '訂單編號' primary key,
GEN_MEB_NO int not null comment '一般會員編號',
PAY_NO int not null comment '付款方式編號',
LOGISTICS_NO int not null comment '物流編號',
PROMOT_NO int  comment '促銷活動編號',
BEFORT_AMOUNT int comment '折價前金額',
ORDER_AMOUNT int comment '結帳金額',
DELIVERY_ADDRESS varchar(65) comment '配送地址',
ORDER_TIME date comment '下訂時間',
ORDER_STATUS char(1) not null comment '訂單狀態'
);
insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','1','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','2','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','3','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','4','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','5','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','6','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','7','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','8','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','9','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 insert into ORDER_FORM(GEN_MEB_NO,PAY_NO,LOGISTICS_NO,PROMOT_NO,BEFORT_AMOUNT,ORDER_AMOUNT,DELIVERY_ADDRESS,ORDER_TIME,ORDER_STATUS)
 value('1','1','1','10','1000','880',' 320桃園市中壢區復興路46號',STR_TO_DATE('2021-09-15','%Y-%m-%d'),'1');
 
 
 create table ORDER_DETAIL( 
ORDER_DETAIL_NO int not null auto_increment comment '訂單明細編號' primary key,
ORDER_NO int not null comment '訂單編號',
PRODUCT_NO int not null comment '商品編號',
ORDER_PRODUCT_NUMBER int comment '訂單商品數量',		
ORDER_PRODUCT_COMMENT varchar(65) comment '商品評價',	
ORDER_PRODUCT_STARS int comment '商品星數',		
ORDER_PRODUCT_COMMENT_STATE char(1) not null comment '評價狀態'
);
insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7001','1','質感很好','5','1');
insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7002','2','速度很快','5','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7003','2','物超所值','5','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7004','6','我不喜歡','1','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7005','6','包裝不完整','2','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7006','6','出貨太慢','3','1');
insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7007','6','普通','3','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7008','6','活動贈品不錯','5','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7009','6','包色購買','5','1');
 insert into ORDER_DETAIL(ORDER_NO,PRODUCT_NO,ORDER_PRODUCT_NUMBER,ORDER_PRODUCT_COMMENT,ORDER_PRODUCT_STARS,ORDER_PRODUCT_COMMENT_STATE)
 value('1','7010','6','毛小孩非常喜歡','5','1');
 
 
 create table SHOPPING_CART(
GEN_MEB_NO int comment '一般會員編號',
PRODUCT_NO int comment '商品編號',
constraint PK_SHOPPING_CART_ID primary key (GEN_MEB_NO, PRODUCT_NO), 
CART_PRODUCT_NUMBER	int comment '購物車商品數量'
);
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('1','7001','6');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('2','7002','6');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('3','7003','6');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('4','7004','1');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('5','7005','2');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('6','7006','3');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('7','7007','4');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('8','7008','2');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('9','7009','1');
insert into SHOPPING_CART(GEN_MEB_NO,PRODUCT_NO,CART_PRODUCT_NUMBER)
 value('10','7010','2');
 
 
 create table PAY_METHOD(
PAY_NO	int not null comment '付款方式編號' primary key, 
PAY_NAME varchar(10) comment '付款方式名稱'
);
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('1','現金');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('2','轉帳');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('3','信用卡');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('4','ApplePay');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('5','LinePay');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('6','GooglePay');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('7','SamsungPay');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('8','超商付款');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('9','超商取貨付款');
insert into PAY_METHOD(PAY_NO,PAY_NAME) value('10','貨到付款');

create table LOGISTICS(
LOGISTICS_NO int not null comment '物流編號' primary key, 
LOGISTICS_NAME varchar(10) comment '物流名稱'
);
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('1','711取貨');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('2','全家取貨');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('3','萊爾富取貨');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('4','OK取貨');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('5','i郵箱');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('6','黑貓宅配');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('7','台灣宅配通');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('8','郵局宅配');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('9','大榮貨運');
insert into LOGISTICS(LOGISTICS_NO,LOGISTICS_NAME) value('10','東源物流');

create table APPEAL(
APPEAL_NO int not null auto_increment comment '申訴編號' primary key,
GEN_MEB_NO int not null comment '一般會員編號',
ORDER_NO int not null comment '訂單編號',
APPEAL_COMMENT varchar(65) comment '申訴內容',	
APPEAL_STATE char(1) not null comment '申訴狀態'
);
insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','1','質量有太差','1');
insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','2','顏色色差','1');
insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','3','敘述不符','1');
 insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','4','期待落差','1');
 insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','5','包裝不良','0');
 insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','6','配送太慢','0');
insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','7','客服人員態度不良','1');
insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','8','商品有誤','0');
 insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','9','缺件','0');
 insert into APPEAL(GEN_MEB_NO,ORDER_NO,APPEAL_COMMENT,APPEAL_STATE)
 value('1','10','毛小孩不愛','0');
 
create table ADOPT_APPLY(
	ADOPT_APPLY_NO int auto_increment comment '領養申請編號' primary key,
    ADOPT_MEB_NO int not null comment '領養機構會員編號',
	GEN_MEB_NO int not null comment '一般會員編號',
	ADOPT_PET_NO int not null comment '領養寵物編號',
    ADOPT_AUDIT_STATE char(1) not null comment '審核狀態', -- (0-審核中/1-審核成功/2-審核失敗)
    ADOPT_APPLY_PEOPLE_ID varchar(10) not null comment '申請人身分證字號',
    ADOPT_APPLY_DATE date not null comment '申請日期',
    ADOPT_APPLY_STATE char(1) not null comment '領養申請狀態' -- (0-取消申請/1-正常申請)
);
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('1','1','1','1','A121342102',STR_TO_DATE('2021-07-21','%Y-%m-%d'),'1');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('2','2','4','0','S214041599',STR_TO_DATE('2021-07-21','%Y-%m-%d'),'1');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('2','2','2','1','S214041599',STR_TO_DATE('2021-07-22','%Y-%m-%d'),'1');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('1','1','9','2','A121342102',STR_TO_DATE('2021-07-23','%Y-%m-%d'),'0');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('5','3','7','1','D154765145',STR_TO_DATE('2021-07-27','%Y-%m-%d'),'1');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('3','1','6','2','A121342102',STR_TO_DATE('2021-07-30','%Y-%m-%d'),'0');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('8','3','6','0','D154765145',STR_TO_DATE('2021-08-05','%Y-%m-%d'),'1');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('6','4','2','2','B152388960',STR_TO_DATE('2021-08-06','%Y-%m-%d'),'0');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('9','6','3','1','A296636979',STR_TO_DATE('2021-08-12','%Y-%m-%d'),'1');
insert into ADOPT_APPLY(ADOPT_MEB_NO, GEN_MEB_NO, ADOPT_PET_NO, ADOPT_AUDIT_STATE, ADOPT_APPLY_PEOPLE_ID, ADOPT_APPLY_DATE, ADOPT_APPLY_STATE)
values('7','5','8','1','A212976558',STR_TO_DATE('2021-08-21','%Y-%m-%d'),'1');

create table PRODUCT_TYPE(
	PRODUCT_TYPE_NO int not null auto_increment comment '商品類別編號' primary key,
    PRODUCT_TYPE_NAME varchar(20) comment '商品類別名稱'
);
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('1','品牌乾飼料');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('2','精選罐頭');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('3','汪咪零食');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('4','狗狗用品');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('5','喵咪用品');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('6','抓板玩具');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('7','美容護理');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('8','居家用具');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('9','外出用具');
insert into PRODUCT_TYPE(PRODUCT_TYPE_NO, PRODUCT_TYPE_NAME)
value('10','特價商品');

create table PRODUCT(
	PRODUCT_NO int not null comment '商品編號' primary key,
    PRODUCT_TYPE_NO int comment '商品種類編號',
    PRODUCT_NAME varchar(20) not null comment '商品名稱',
	PRODUCT_PRICE int not null comment '商品價格',
	PRODUCT_COMMENT varchar(65) comment '商品簡介',
	PRODUCT_STATUS char(1) not null comment '商品狀態', -- (0-下架/1-上架)，預設為0
    PRODUCT_ALL_STARS int comment '商品評價總星數', -- (預設為0)
    PRODUCT_ALL_COMMENTS int comment '商品評價總數量' -- (預設為0)
);
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7001','1','A牌狗狗乾飼料','499','成犬-雞肉胡蘿蔔口味，2kg。','1','3','25');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7002','1','A牌喵咪乾飼料','599','成貓-雞肉豌豆口味，2kg。','1','4','31');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7003','2','A牌狗狗罐頭','420','雞肉口味，85g X 12入。','1','4','80');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7004','2','B牌貓咪罐頭','650','鮭魚口味，100g X 10入。','1','4','71');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7005','3','肉乾肉條','120','香噴牛肉條，240g。','1','3','60');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7006','3','茨木草棒','100','茨木草木天蓼棒，100g。','1','5','88');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7007','4','A牌潔牙骨','150','六角長條型潔牙骨，2oz。','0','0','0');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7008','4','B牌潔牙骨','400','天然潔牙骨，12oz。','1','3','50');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7009','5','A牌貓砂','599','除臭貓砂(豆腐砂)，7L。','1','4','108');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7010','5','B牌貓砂','799','精選凝結貓砂(礦砂)，10L。','1','3','110');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7011','6','A牌貓抓板','599','骨頭實木床專用替換芯紙板，49*26*8公分。','1','4','108');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7012','6','耐咬小樹枝','360','樹枝M(中型犬)，19*3.5公分。','1','3','10');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7013','7','喵用指甲剪','520','貓用安全檔片指甲剪。','0','0','0');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7014','7','犬用指甲剪','580','犬用指甲剪附磨甲器。','0','0','0');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7015','8','自動餵食器','1200','甜甜圈六餐餵食器 (粉色)。','1','5','10');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7016','8','自動飲水器','1800','智能寵物循環活水機(暮夜灰) 。','1','5','8');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7017','9','貓用牽引繩','290','野獸色塊(多彩)。','1','4','17');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7018','9','寵物外出飲水壺','190','綠葉寵物外出飲水壺(草藍)。','1','3','80');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7019','10','AB牌狗狗乾飼料','399','成犬-火雞口味，2kg。','0','0','0');
insert into PRODUCT(PRODUCT_NO,PRODUCT_TYPE_NO, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_COMMENT, PRODUCT_STATUS, PRODUCT_ALL_STARS, PRODUCT_ALL_COMMENTS)
value('7020','10','B牌貓抓板','320','骨頭實木床專用替換芯紙板，30*20*5公分。','0','0','0');

create table PRODUCT_PHOTOS(
	PRODUCT_PHOTO_NO int not null auto_increment comment '商品照片編號' primary key,
    PRODUCT_NO int not null comment '商品編號',
    PRODUCT_PHOTO longblob comment '商品照片'
);
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7001');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7001');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7002');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7003');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7004');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7005');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7006');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7006');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7007');
insert into PRODUCT_PHOTOS(PRODUCT_NO)
value('7008');

create table TRACK_PRODUCT(
	GEN_MEB_NO int comment '一般會員編號',
    PRODUCT_NO int comment '商品編號',
    constraint primary key(GEN_MEB_NO,PRODUCT_NO)
);
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('1','7001');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('1','7002');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('1','7003');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('2','7004');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('3','7005');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('3','7006');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('7','7007');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('8','7008');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('10','7009');
insert into TRACK_PRODUCT(GEN_MEB_NO, PRODUCT_NO)
value('10','7010');

create table FORUM_ARTICLE_CLS(
	FORUM_ARTICLE_CLS_NO int not null auto_increment comment '討論區文章分類編號' primary key,
	FORUM_ARTICLE_CLS_NAME varchar(65) not null comment '討論區文章分類名稱'
);
insert into FORUM_ARTICLE_CLS( FORUM_ARTICLE_CLS_NO, FORUM_ARTICLE_CLS_NAME )
values('1','寵物醫療保健'),('2','領養問題'),('3','寵物飼料&玩具'),('4','走失協尋'),
('5','寵物訓練'),('6','生活分享&交流'),('7','寵物美容'),('8','寵物生命禮儀'),
('9','商城好物推薦&折扣'),('10','孕事配種');

create table FORUM_ARTICLE(
	FORUM_ARTICLE_NO int not null auto_increment comment '討論區文章編號' primary key,
	FORUM_ARTICLE_CLS_NO int comment '討論區文章分類編號FK',
	GEN_MEB_NO int not null comment '一般會員編號FK',
	FORUM_COMM_COM_NAME varchar(10) comment '討論區文章名稱',
	FORUM_COMM_COM varchar(65) comment '討論區文章內容',
	FORUM_COMM_DATE date not null comment '討論區文章發表日期',
	FORUM_COMM_STATE char(1) not null comment '討論區文章狀態0/1(正常顯示/已刪除)'
);
insert into FORUM_ARTICLE(FORUM_ARTICLE_CLS_NO,GEN_MEB_NO,FORUM_COMM_COM_NAME,FORUM_COMM_COM,FORUM_COMM_DATE,FORUM_COMM_STATE )
values
('1','1','狗狗跳蚤問題','狗狗跳蚤有跳蚤該怎麼根治?',STR_TO_DATE('2021-08-06','%Y-%m-%d'),'0')
,('2','2','領養需要什麼條件','想養一隻貓，一個月大約的花費?',STR_TO_DATE('2021-08-07','%Y-%m-%d'),'0')
,('3','3','狗狗腸胃不好','請推薦低敏飼料~',STR_TO_DATE('2021-08-08','%Y-%m-%d'),'0')
,('4','4','鸚鵡飛走了','紅色金剛鸚鵡 遺失地點中壢區中正路',STR_TO_DATE('2021-08-08','%Y-%m-%d'),'0')
,('5','5','貓亂尿尿','英短已結紮，但還是常常亂尿，有什麼辦法解決，求助大家，謝謝',STR_TO_DATE('2021-08-06','%Y-%m-%d'),'0')
,('6','6','哈士奇花蓮一日遊','七星潭散步&寵物餐廳用餐照片分享',STR_TO_DATE('2021-08-09','%Y-%m-%d'),'0')
,('7','7','狗狗想換新照型','有推薦細心的美容店嗎(雙北)?',STR_TO_DATE('2021-08-10','%Y-%m-%d'),'0')
,('8','8','布偶貓生病快走了','有推薦禮儀公司(新北)?',STR_TO_DATE('2021-08-12','%Y-%m-%d'),'0')
,('10','9','3歲黃金獵犬找男友','3歲多了，想幫他找男友我們在高雄',STR_TO_DATE('2021-08-13','%Y-%m-%d'),'0')
,('1','10','股市資訊盤中焦點','精選標的實時分享,面臨不確定時的應對方式幫助到更多的朋友們，點擊下方鏈接即可加入我們成為散戶聯盟一員',STR_TO_DATE('2021-08-13','%Y-%m-%d'),'0')
,('1','10','紅運當沖','賺錢就是這麼簡單做空賺錢做多漲停您已受邀加入“股海大贏家🎉”。请访问以下链接OpenChat。6n.cn/wqhqd',STR_TO_DATE('2021-08-13','%Y-%m-%d'),'0');

create table FORUM_ARTICLE_REPORT(
	ARTICLE_REPORT_NO int not null auto_increment comment '文章檢舉編號' primary key,
	FORUM_ARTICLE_NO int not null comment '討論區文章編號FK',
	GEN_MEB_NO int not null comment '一般會員編號(檢舉人)FK',
	FORUM_COMM_REPORT_COM varchar(65) not null comment '討論區文章檢舉內容',
	FORUM_COMM_REPORT_STATE char(1) not null comment '討論區文章檢舉狀態1/2/0(審核中/審核通過/審核失敗)',
	FORUM_COMM_REPORT_DATE date not null comment '討論區文章檢舉日期'
);
insert into FORUM_ARTICLE_REPORT(FORUM_ARTICLE_NO,GEN_MEB_NO,FORUM_COMM_REPORT_COM,FORUM_COMM_REPORT_STATE,FORUM_COMM_REPORT_DATE)
values('1','1','詐騙廣告','1',STR_TO_DATE('2021-08-06','%Y-%m-%d')
);
insert into FORUM_ARTICLE_REPORT(FORUM_ARTICLE_NO,GEN_MEB_NO,FORUM_COMM_REPORT_COM,FORUM_COMM_REPORT_STATE,FORUM_COMM_REPORT_DATE)
values('1','10','詐騙廣告','1',STR_TO_DATE('2021-08-20','%Y-%m-%d')),
		('2','10','詐騙廣告','1',STR_TO_DATE('2021-08-20','%Y-%m-%d'));

create table EMP(
	EMP_NO int not null auto_increment comment '員工編號' primary key,
	EMP_ACCOUNT varchar(16) comment '帳號(8~16的長度)',
	EMP_PASSWORD varchar(16) comment '密碼(8~16的長度)',
	EMP_NAME varchar(10) comment '員工姓名',
	EMP_ON_JOB char(1) not null comment '員工狀態,(1/0在職.離職,新增時預設是在職)',
	EMP_IMG	longblob comment '員工照片',
	EMP_MAIL varchar(20) comment '員工信箱',
	EMP_PHONE varchar(10) comment '員工手機',
	EMP_GENDER char(1) not null comment '性別(0女生，1男生)',
	EMP_DAY date comment '員工生日',
	EMP_ADD	varchar(30) comment '員工住址',
	EMP_SCHOOL varchar(20) comment '員工畢業最高學歷',
	EMP_DATE date comment '員工到職日'
);
insert into EMP( EMP_ACCOUNT,EMP_PASSWORD,EMP_NAME,EMP_ON_JOB,EMP_MAIL,EMP_PHONE,EMP_GENDER,EMP_DAY,EMP_ADD,EMP_DATE)
values
('12345678','12345678','David','1','aaa@abc.com.tw','0963123123','1',STR_TO_DATE('1962-01-06','%Y-%m-%d'),('新北市汐止區'),STR_TO_DATE('2020-01-06','%Y-%m-%d')),
('12345678','12345678','Abe','1','bbb@abc.com.tw','0963123123','1',STR_TO_DATE('1968-06-06','%Y-%m-%d'),('台北市文山區'),STR_TO_DATE('2020-02-06','%Y-%m-%d')),
('12345678','12345678','Bill','1','ccc@abc.com.tw','0963123123','1',STR_TO_DATE('1970-01-09','%Y-%m-%d'),('新北市樹林區'),STR_TO_DATE('2020-03-06','%Y-%m-%d')),
('12345678','12345678','Danny','1','ddd@abc.com.tw','0963123123','1',STR_TO_DATE('1989-01-18','%Y-%m-%d'),('桃園市中壢區'),STR_TO_DATE('2020-04-06','%Y-%m-%d')),
('12345678','12345678','Don','1','eee@abc.com.tw','0963123123','1',STR_TO_DATE('1990-01-06','%Y-%m-%d'),('台北市中山區'),STR_TO_DATE('2020-05-06','%Y-%m-%d')),
('12345678','12345678','Guy','1','fff@abc.com.tw','0963123123','1',STR_TO_DATE('1991-05-27','%Y-%m-%d'),('桃園市中壢區'),STR_TO_DATE('2020-06-06','%Y-%m-%d')),
('12345678','12345678','Jack','1','ggg@abc.com.tw','0963123123','1',STR_TO_DATE('1999-01-06','%Y-%m-%d'),('桃園市中壢區'),STR_TO_DATE('2020-07-06','%Y-%m-%d')),
('12345678','12345678','Jeff','1','hhh@abc.com.tw','0963123123','1',STR_TO_DATE('1988-07-02','%Y-%m-%d'),('台北市大安區'),STR_TO_DATE('2020-08-06','%Y-%m-%d')),
('12345678','12345678','Jessy','1','iii@abc.com.tw','0963123123','1',STR_TO_DATE('1999-08-22','%Y-%m-%d'),('桃園市八德區'),STR_TO_DATE('2020-09-06','%Y-%m-%d')),
('12345678','12345678','Anne','1','jjj@abc.com.tw','0963123123','0',STR_TO_DATE('2000-09-11','%Y-%m-%d'),('桃園市中壢區'),STR_TO_DATE('2020-10-06','%Y-%m-%d'));

create table EMP_FUNCTION(
	FUNCTION_NO int not null auto_increment comment '功能編號' primary key,
	FUNCTION_NAME varchar(20) not null comment '功能名稱'    
);
insert into EMP_FUNCTION(FUNCTION_NAME)
values('文章檢舉功能1'),
('領養檢舉功能2'),
('商品管理功能3'),
('訂單功能4'),
('商城資訊功能5'),
('行銷活動功能6'),
('領養機構帳號管理功能7'),
('領養機構審核8'),
('平台資訊總覽管理功能9'),
('員工管理功能10'),
('最新消息管理功能11');

create table EMP_PURVIEW(
	EMP_NO int comment '員工編號FK',
	FUNCTION_NO int comment '功能編號FK',    
 constraint PK_EMP_PURVIEW_ID primary key (EMP_NO, FUNCTION_NO)
);
insert into EMP_PURVIEW(EMP_NO,FUNCTION_NO)
values('1','1'),('1','2'),('1','3'),('1','4'),('1','5'),('1','6'),('1','7'),('1','8'),('1','9'),('1','10'),('1','11'),
	('2','1'),('2','2'),('2','3'),('2','4'),('2','5'),('2','6'),('2','7'),('2','8'),('2','9'),('2','10'),('2','11'),
    ('3','4'),('3','5'),('3','6'),('3','9'),('3','10'),('3','11'),
	('4','4'),('4','5'),('4','6'),('4','9'),('4','11'),
    ('5','4'),('5','5'),('5','6'),('5','9'),('5','11'),
    ('6','4'),('6','5'),('6','6'),('6','9'),('6','11'),
    ('7','1'),('7','2'),('7','7'),('7','8'),
    ('8','1'),('8','2'),('8','7'),('8','8'),
    ('9','10'),
    ('10','1'),('10','5'),('10','9'),('10','11');


create table SHOPPING_INFORMATION(
	SHOPPING_INFORMATION_NO int not null auto_increment comment '商城編號' primary key,
	SHOPPING_IMG longblob comment '商城照片',
	SHOPPING_DATA varchar(65) comment '商城簡介',
	SHOPPING_TEL varchar(10) comment '連絡電話',
	SHOPPING_FAX varchar(10) comment '傳真號碼',
	SHOPPING_ADD varchar(65) comment '聯絡地址'
);
insert into SHOPPING_INFORMATION(SHOPPING_DATA,SHOPPING_TEL,SHOPPING_FAX,SHOPPING_ADD)
values('如果您對我們的產品有任何專業問題，歡迎用電話與我們聯絡03-4251108。 或者撥打電話將有專業人員為您解答。','034251108','034251108','320桃園市中壢區復興路46號9樓');

create table NEWS(
	NEWS_NO	int not null auto_increment comment '平台最新消息編號' primary key,
	NEWS_DATE date comment '消息公告時間',
	NEWS_STATE char(1) not null comment '消息狀態1/0，顯示/不顯示(新增時預設是不顯示)',
	NEWS_DATA varchar(65) not null comment '消息資料',
	NEWS_IMG longblob comment '消息圖片'
);
insert into NEWS(NEWS_DATE,NEWS_STATE,NEWS_DATA)
values(STR_TO_DATE('2021-08-06','%Y-%m-%d'),'1','因疫情影響貨運塞車，收貨時間會延後3~4天請見諒');
insert into NEWS(NEWS_DATE,NEWS_STATE,NEWS_DATA)
values
(STR_TO_DATE('2021-01-01','%Y-%m-%d'),'0','網站全新開幕，全館6折大優惠!!!'),
(STR_TO_DATE('2021-06-06','%Y-%m-%d'),'1','因疫情升溫，凡購買超過100贈送限量口罩5個，數量有限送完為止'),
(STR_TO_DATE('2021-07-06','%Y-%m-%d'),'1','因疫情影響貨運塞車，收貨時間會延後3~4天請見諒'),
(STR_TO_DATE('2021-07-07','%Y-%m-%d'),'1','因疫情影響進口商品航運漲價，部分進口商品價格調漲'),
(STR_TO_DATE('2021-06-06','%Y-%m-%d'),'1','因疫情護理人員辛勞，凡護理人員全館7折'),
(STR_TO_DATE('2021-08-02','%Y-%m-%d'),'1','慶祝降二級，全館8折'),
(STR_TO_DATE('2021-08-08','%Y-%m-%d'),'1','爸爸節活動，全館88折起'),
(STR_TO_DATE('2021-08-26','%Y-%m-%d'),'1','慶祝疫情+0活動，全館8折');


create table WEB_PADE_DATA(
	WEB_PADE_DATA_NO int not null auto_increment comment '平台頁面編號' primary key,
	WEB_PADE_DATA int comment '平台頁面統計點擊數據',
	WEB_PADE_DATE date comment '平台數據統計時間'
);
insert into WEB_PADE_DATA(WEB_PADE_DATA,WEB_PADE_DATE)
values('80',STR_TO_DATE('2021-08-06','%Y-%m-%d'));
insert into WEB_PADE_DATA(WEB_PADE_DATA,WEB_PADE_DATE)
values('80',STR_TO_DATE('2021-08-01','%Y-%m-%d')),
		('111',STR_TO_DATE('2021-08-02','%Y-%m-%d')),
        ('98',STR_TO_DATE('2021-08-03','%Y-%m-%d')),
        ('130',STR_TO_DATE('2021-08-04','%Y-%m-%d')),
        ('111',STR_TO_DATE('2021-08-05','%Y-%m-%d')),
        ('120',STR_TO_DATE('2021-08-06','%Y-%m-%d')),
        ('177',STR_TO_DATE('2021-08-07','%Y-%m-%d')),
        ('287',STR_TO_DATE('2021-08-08','%Y-%m-%d')),
        ('125',STR_TO_DATE('2021-08-09','%Y-%m-%d')),
        ('140',STR_TO_DATE('2021-08-10','%Y-%m-%d')),
        ('130',STR_TO_DATE('2021-08-11','%Y-%m-%d')),
        ('150',STR_TO_DATE('2021-08-12','%Y-%m-%d'));





create table STORED_VAL_RECORD (
	STORED_VAL_RECORD_NO int not null comment '儲值紀錄編號' primary key auto_increment,
    	GEN_MEB_NO int not null comment '一般會員編號',
    	STORED_VAL_DATE date not null comment '儲值日期',
    	STORED_VAL_AMOUNT int not null comment '儲值金額'
);

insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('1',STR_TO_DATE('2021-07-21','%Y-%m-%d'),1000);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('2',STR_TO_DATE('2021-07-24','%Y-%m-%d'),3000);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('3',STR_TO_DATE('2021-06-30','%Y-%m-%d'),500);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('4',STR_TO_DATE('2021-07-29','%Y-%m-%d'),200);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('5',STR_TO_DATE('2021-05-23','%Y-%m-%d'),800);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('1',STR_TO_DATE('2021-07-21','%Y-%m-%d'),1000);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('2',STR_TO_DATE('2021-07-24','%Y-%m-%d'),3000);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('3',STR_TO_DATE('2021-06-30','%Y-%m-%d'),500);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('4',STR_TO_DATE('2021-07-29','%Y-%m-%d'),200);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('5',STR_TO_DATE('2021-05-23','%Y-%m-%d'),800);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('6',STR_TO_DATE('2021-04-23','%Y-%m-%d'),850);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('7',STR_TO_DATE('2021-02-23','%Y-%m-%d'),700);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('8',STR_TO_DATE('2021-07-23','%Y-%m-%d'),6800);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('9',STR_TO_DATE('2021-10-23','%Y-%m-%d'),8000);
insert into STORED_VAL_RECORD(GEN_MEB_NO,STORED_VAL_DATE,STORED_VAL_AMOUNT)
values('10',STR_TO_DATE('2021-11-23','%Y-%m-%d'),500);

create table ADOPT_MEMBER_REPORT (
	ADOPT_MEB_REPORT_NO int not null comment '機構檢舉編號' primary key auto_increment,
    	ADOPT_MEB_NO int not null comment '領養機構會員編號',
    	GEN_MEB_NO int not null comment '一般會員編號',
    	EPORT_COMMENT varchar(65) not null comment '領養機構檢舉內容',
    	ADOPT_MEB_REPORT_STATE char(1) not null comment '領養機構檢舉狀態',
    	ADOPT_MEB_REPORT_DATE date not null comment '領養機構檢舉日期'
);

insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('1','2','環境髒亂',1,STR_TO_DATE('2021-06-12','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('2','5','虐待動物',1,STR_TO_DATE('2021-07-05','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('3','4','環境髒亂',1,STR_TO_DATE('2021-08-31','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('4','1','虐待動物',1,STR_TO_DATE('2021-04-05','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('5','5','虐待動物',1,STR_TO_DATE('2021-07-17','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('6','7','環境髒亂',1,STR_TO_DATE('2021-07-26','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('7','8','未符合政府規範',1,STR_TO_DATE('2021-07-13','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('8','3','虐待動物',1,STR_TO_DATE('2021-08-05','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('9','4','未符合政府規範',1,STR_TO_DATE('2021-09-05','%Y-%m-%d'));
insert into ADOPT_MEMBER_REPORT(ADOPT_MEB_NO,GEN_MEB_NO,EPORT_COMMENT,ADOPT_MEB_REPORT_STATE,ADOPT_MEB_REPORT_DATE)
values('10','5','管理者查無此人',1,STR_TO_DATE('2021-12-05','%Y-%m-%d'));

create table GENERAL_MEMBER_PET (
	GEN_MEB_PET_NO int not null comment '一般會員寵物' primary key auto_increment,
    	ADOPT_PET_NO int not null comment '領養寵物編號',
   	PET_CLASS_NO int not null comment '寵物分類編號',
    	GEN_MEB_NO int not null comment '一般會員編號',
	GEN_MEB_PET_BREEDS varchar(10) comment '寵物品種',
    	GEN_MEB_PET_GENDER char(1) comment '性別',
    	GEN_MEB_PET_CHIP varchar(15) not null comment '晶片號碼',
    	GEN_MEB_PET_STERILIZATION char(1) comment '是否絕育',
    	GEN_MEB_PET_COLOR varchar(10) comment '毛色',
    	GEN_PET_COMMENT varchar(65) comment '寵物心得',
    	GEN_PET_STATE char(1) not null comment '一般會員寵物狀態'
);

insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('1','1','1','台灣犬',0,67878,1,'白偏黃','活潑',1);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('2','2','3','緬因貓',1,37387,1,'黑帶有部分白','害羞但親人',0);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('3','3','4','米克斯',1,37387,1,'白色','活潑',1);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('4','4','2','摺耳貓',1,37387,1,'黑白相間','熱情',0);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('5','5','8','米克斯',1,37387,1,'黃白','害羞但親人',1);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('6','7','2','不清楚',1,37387,1,'咖啡色','膽小',0);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('7','10','10','哈士奇',1,37387,1,'黑帶有部分白','害羞但活潑',1);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('8','3','7','波絲貓',1,37387,1,'','兇猛',0);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('9','6','1','拉不拉多',1,37387,1,'黑帶有部分白','膽小',0);
insert into GENERAL_MEMBER_PET(ADOPT_PET_NO,PET_CLASS_NO,GEN_MEB_NO,GEN_MEB_PET_BREEDS,GEN_MEB_PET_GENDER,GEN_MEB_PET_CHIP,GEN_MEB_PET_STERILIZATION,GEN_MEB_PET_COLOR,GEN_PET_COMMENT,GEN_PET_STATE)
values('10','5','2','台灣犬',1,37387,1,'黑色','熱情',1);

create table GENERAL_MEMBER_PET_PHOTOS (
	GEN_MEB_PET_PHOTO_NO int not null comment '一般會員寵物照片編號' primary key auto_increment,
    	GEN_MEB_NO int not null comment '一般會員編號',
    	GEN_MEB_PET_PHOTO longblob comment '一般會員寵物照片'
);
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('1');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('2');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('3');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('4');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('5');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('6');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('7');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('8');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('9');
insert into GENERAL_MEMBER_PET_PHOTOS(GEN_MEB_NO)
values('10');

create table FOLLOW_PET (
	GEN_MEB_NO int not null comment '一般會員編號',
	ADOPT_PET_NO int not null comment '領養寵物編號',
    constraint PK_FOLLOW_PET_ID primary key (GEN_MEB_NO, ADOPT_PET_NO)
);
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('1','2');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('2','1');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('3','4');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('4','5');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('5','8');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('6','10');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('7','4');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('8','3');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('9','2');
insert into FOLLOW_PET(GEN_MEB_NO,ADOPT_PET_NO)
values('10','7');



create table ADOPT_MEMBER(
	ADOPT_MEB_NO int not null auto_increment comment '領養機構會員編號' primary key,
	ADOPT_MEB_NAME varchar(10) not null  comment '領養機構會員名稱',
    ADOPT_MEB_COMMENT  varchar(65) comment '領養機構會員簡介',
    ADOPT_MEB_PHOTO longblob comment '領養機構會員圖片',
    ADOPT_MEB_ADDRESS varchar(65) not null comment '領養機構會員地址',
    ADOPT_MEB_PHONE varchar(10) not null comment '領養機構會員連絡電話',
    ADOPT_MEB_EMAIL varchar(30) comment '領養機構會員EMAIL',
    ADOPT_MEB_ACCOUNT varchar(16) not null comment '帳號',
    ADOPT_MEB_PASSWORD varchar(16) not null comment '密碼',
    ADOPT_MEB_STATE char(1) not null comment '帳號狀態',
    ADOPT_MEB_AUTH char(1) not null comment '權限狀態',
    ADOPT_MEB_HOLIDAY varchar(7) not null comment '公休日',
    ADOPT_MEB_LIMIT varchar(24) not null comment '時段上限'
);
insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('Amos','我是Amos領養機構','桃園市中壢區復興路46號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('Billy','我是Billy領養機構','桃園市中壢區復興路55號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('馬莉','我是馬莉領養機構','桃園市中壢區復興路45號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('馬力歐','我是馬力歐領養機構','桃園市中壢區復興路35號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('浩克','我是浩克領養機構','桃園市中壢區復興路54號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('鋼鐵人','我是鋼鐵人領養機構','桃園市中壢區復興路15號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('神力女超人','我是神力女超人領養機構','桃園市中壢區復興路58號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('水行俠','我是水行俠領養機構','桃園市中壢區復興路140號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('蝙蝠俠','我是蝙蝠俠領養機構','桃園市中壢區復興路152號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 insert into ADOPT_MEMBER (ADOPT_MEB_NAME,ADOPT_MEB_COMMENT,ADOPT_MEB_ADDRESS,ADOPT_MEB_PHONE,ADOPT_MEB_EMAIL,ADOPT_MEB_ACCOUNT,ADOPT_MEB_PASSWORD,ADOPT_MEB_STATE,ADOPT_MEB_AUTH,ADOPT_MEB_HOLIDAY,ADOPT_MEB_LIMIT)
 values('小丑','我是小丑領養機構','桃園市中壢區復興路155號9樓','0988364696','zxcy9980@gmail.com','qpgrrttzy','123456','2','1','0111110','000000000033333333333000');
 
create table ADOPT_APPOINT_FORM(
	APPOINT_FORM_NO int not null auto_increment comment '預約表編號' primary key,
    ADOPT_MEB_NO int not null comment '領養機構會員編號',
    APPOINT_DATE date not null,
    FINIFH_APPOINT_NUM varchar(24) not null comment '已預約數',
    APPOINT_LIMIT varchar(24) not null comment '可預約上限' 
);
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('1',STR_TO_DATE('2021-08-06','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('2',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('3',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('4',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('4',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('5',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('6',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('7',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('8',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('9',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');
insert into ADOPT_APPOINT_FORM(ADOPT_MEB_NO,APPOINT_DATE,FINIFH_APPOINT_NUM,APPOINT_LIMIT)
values('10',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000000000000','000000000033333333333000');

create table ADOPT_MEMBER_NEWS(
	ADOPT_MEB_NEWS_NO int not null auto_increment comment '領養機構最新消息編號' primary key,
    ADOPT_MEB_NO int not null comment '領養機構會員編號',
    ADOPT_MEB_NEWS_TITLE varchar(65)  not null comment '領養機構最新消息標題',
    ADOPT_MEB_NEWS_COMMENT varchar(65)  not null comment '領養機構最新消息內容',
    ADOPT_MEB_NEWS_PHOTO longblob comment '領養機構最新消息圖片',
    ADOPT_MEB_NEWS_STATE char(1) not null comment '領養機構最新消息狀態',
    ADOPT_MEB_NEWS_DATE date not null comment '領養機構最新消息日期'
);
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('1','我是Amos的最新消息標題','我是Amos的最新消息內容','1',STR_TO_DATE('2021-08-06','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('2','我是Billy的最新消息標題','我是Billy的最新內容','1',STR_TO_DATE('2021-08-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('3','我是馬莉的最新消息標題','我是馬莉的最新內容','1',STR_TO_DATE('2021-08-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('4','我是馬力歐的最新消息標題','我是馬力歐的最新內容','1',STR_TO_DATE('2021-08-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('5','我是浩克的最新消息標題','我是浩克的最新內容','1',STR_TO_DATE('2021-04-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('6','我是鋼鐵人的最新消息標題','我是鋼鐵人的最新內容','1',STR_TO_DATE('2021-02-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('7','我是神力女超人的最新消息標題','我是神力女超人的最新內容','1',STR_TO_DATE('2021-11-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('8','我是水行俠的最新消息標題','我是水行俠的最新內容','1',STR_TO_DATE('2021-12-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('9','我是蝙蝠俠的最新消息標題','我是蝙蝠俠的最新內容','1',STR_TO_DATE('2021-04-23','%Y-%m-%d'));
insert into ADOPT_MEMBER_NEWS(ADOPT_MEB_NO,ADOPT_MEB_NEWS_TITLE,ADOPT_MEB_NEWS_COMMENT,ADOPT_MEB_NEWS_STATE,ADOPT_MEB_NEWS_DATE)
value('10','我是小丑的最新消息標題','我是小丑的最新內容','1',STR_TO_DATE('2021-06-23','%Y-%m-%d'));

create table PET_CLASS(
	PET_CLASS_NO int not null auto_increment comment '寵物分類編號' primary key,
    PET_CLASS_NAME varchar(10) not null comment '寵物分類名稱 ',
    PET_CLASS_STATE char(1) not null comment '寵物分類狀態 '
);
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('狗','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('貓','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('烏龜','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('水母','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('飛禽','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('鳥','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('北部','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('中部','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('南部','1');
insert into PET_CLASS(PET_CLASS_NAME,PET_CLASS_STATE)value('東部','1');

create table ADOPT_PET(
	ADOPT_PET_NO int not null auto_increment comment '領養寵物編號' primary key,
    ADOPT_MEB_NO int not null comment '領養機構會員編號',    
    GEN_MEB_NO int  comment '一般會員編號',
    ADOPT_PET_BREEDS varchar(10) comment '領養寵物品種',
    ADOPT_PET_GENDER char(10) comment '性別',
    ADOPT_PET_COME_FORM varchar(65) comment '來源',
    ADOPT_PET_JOIN_DATE date comment '入所日期',
    ADOPT_PET_CHIP varchar(15) not null comment '晶片號碼',
    ADOPT_PET_JOIN_REASON varchar(65) comment '進所原因',
    CAPTURE_ADDRESS varchar(65) comment '捕獲地址',
    ADOPT_PET_STERILIZATION char(10) comment '是否絕育',
    CONTAIN_NUMBER varchar(15) comment '收容編號',
    ADOPT_PET_COLOR varchar(30) comment '寵物顏色',
    ADOPT_PET_STATE char(1) not null comment '領養寵物狀態' 
);
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('1','台灣土狗','公','路邊捕獲',STR_TO_DATE('2021-08-06','%Y-%m-%d'),'HA34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','黑','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('1','波斯貓','母','路邊捕獲',STR_TO_DATE('2021-08-09','%Y-%m-%d'),'CP34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','白','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('1','藏敖','公','路邊捕獲',STR_TO_DATE('2021-08-21','%Y-%m-%d'),'ER34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','紅','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('1','哈士奇','母','路邊捕獲',STR_TO_DATE('2021-08-15','%Y-%m-%d'),'WC34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','黃','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('2','柴犬','母','路邊捕獲',STR_TO_DATE('2021-08-29','%Y-%m-%d'),'TR34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','黑','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('2','秋田犬','公','路邊捕獲',STR_TO_DATE('2021-08-26','%Y-%m-%d'),'YY34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','藍','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('2','陸龜','母','路邊捕獲',STR_TO_DATE('2021-08-05','%Y-%m-%d'),'ZO34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','綠','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('2','海龜','公','路邊捕獲',STR_TO_DATE('2021-08-25','%Y-%m-%d'),'ZO34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','青','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('2','老鷹','母','路邊捕獲',STR_TO_DATE('2021-08-09','%Y-%m-%d'),'ZO34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','紫','0');
insert into ADOPT_PET(ADOPT_MEB_NO,ADOPT_PET_BREEDS,ADOPT_PET_GENDER,ADOPT_PET_COME_FORM,ADOPT_PET_JOIN_DATE,ADOPT_PET_CHIP,ADOPT_PET_JOIN_REASON,CAPTURE_ADDRESS,ADOPT_PET_STERILIZATION,CONTAIN_NUMBER,ADOPT_PET_COLOR,ADOPT_PET_STATE)
value('2','水母','公','路邊捕獲',STR_TO_DATE('2021-08-14','%Y-%m-%d'),'ZO34567PO912QW4','捕狗大隊捕獲收容','桃園市中壢區復興路','是','MKY1548JS98UT1Q','綠','0');

create table RESERVE_PET(
	RESERVE_PET_NO	int not null auto_increment comment '預約看寵物編號' primary key,
	ADOPT_MEB_NO int not null comment '領養機構會員編號',
    GEN_MEB_NO int not null comment '一般會員編號',
    ADOPT_PET_NO int not null comment '領養寵物編號',
    RESERVE_PEOPLE_NAME varchar(10) not null comment '預約人姓名',
    RESERVE_PEOPLE_PHONE varchar(10) not null comment '預約人電話',
    RESERVE_DATE date not null comment '申請日期',
    RESERVE_TIME varchar(24) not null comment '預約時段',
    RESERVE_STATE char(1) not null comment '預約狀態' 
);
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('1','1','1','連戰','0987987987',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000100000000000000','1');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('1','1','2','連橫','0987854864',STR_TO_DATE('2021-08-16','%Y-%m-%d'),'000000000010000000000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','3','連鎮東','0987487487',STR_TO_DATE('2021-08-15','%Y-%m-%d'),'000000000001000000000000','1');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','蔣經國','0987156658',STR_TO_DATE('2021-08-20','%Y-%m-%d'),'000000000000000100000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','蔣偉文','0987156658',STR_TO_DATE('2021-08-22','%Y-%m-%d'),'000000000000000100000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','柯文哲','0987156658',STR_TO_DATE('2021-08-23','%Y-%m-%d'),'000000000000000100000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','蔡英文','0987156658',STR_TO_DATE('2021-08-24','%Y-%m-%d'),'000000000000000100000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','馬英九','0987156658',STR_TO_DATE('2021-08-17','%Y-%m-%d'),'000000000000000100000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','陳水扁','0987156658',STR_TO_DATE('2021-08-05','%Y-%m-%d'),'000000000000000100000000','0');
insert into RESERVE_PET(ADOPT_MEB_NO,GEN_MEB_NO,ADOPT_PET_NO,RESERVE_PEOPLE_NAME,RESERVE_PEOPLE_PHONE,RESERVE_DATE,RESERVE_TIME,RESERVE_STATE)
value('2','1','4','呂秀蓮','0987156658',STR_TO_DATE('2021-08-04','%Y-%m-%d'),'000000000000000100000000','0');

create table ADOPT_PET_PHOTO(
ADOPT_PET_PHOTO_NO	int not null auto_increment comment '領養寵物照片編號' primary key,
ADOPT_PET_NO int not null comment '領養寵物編號',
ADOPT_PET_PHOTO longblob comment '領養寵物照片',
ADOPT_PET_COVER_STATE char(1) not null comment '封面狀態' ,
ADOPT_PET_COVER_CHANGE_TIME DATETIME comment '修改時間' 
);
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('1');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('1');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('2');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('2');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('3');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('3');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('3');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('4');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('4');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('5');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('5');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('5');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('6');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('6');
-- insert into ADOPT_PET_PHOTO(ADOPT_PET_NO)
-- value('7');

create table PET_CLASS_LIST(
	PET_CLASS_LIST_NO int not null auto_increment comment '寵物分類詳細編號' primary key,
    ADOPT_PET_NO int comment '領養寵物編號',
    PET_CLASS_NO int comment '寵物分類編號',
    GEN_MEB_PET_NO int comment '一般會員寵物編號' ,
    PET_CLASS_LIST_STATE char(1) not null comment '寵物分類詳細狀態'
);
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('1','1','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('1','5','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('2','2','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('2','6','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('3','1','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('3','7','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('4','1','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('4','8','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('5','1','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('5','5','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('6','1','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('6','7','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('7','3','1');
insert into PET_CLASS_LIST(ADOPT_PET_NO,PET_CLASS_NO,PET_CLASS_LIST_STATE)value('7','5','1');


alter table ADOPT_APPOINT_FORM add constraint FK_ADOPT_APPOINT_FORM_ADOPT_MEB_NO foreign key(ADOPT_MEB_NO)
    references ADOPT_MEMBER(ADOPT_MEB_NO);
alter table ADOPT_MEMBER_NEWS add constraint FK_ADOPT_MEMBER_NEWS_ADOPT_MEB_NO foreign key(ADOPT_MEB_NO)
    references ADOPT_MEMBER(ADOPT_MEB_NO);
alter table ADOPT_PET add constraint FK_ADOPT_PET_ADOPT_MEB_NO foreign key(ADOPT_MEB_NO)
    references ADOPT_MEMBER(ADOPT_MEB_NO);
alter table ADOPT_PET add constraint FK_ADOPT_PET_GEN_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);    
alter table RESERVE_PET add constraint FK_RESERVE_PET_ADOPT_MEB_NO foreign key(ADOPT_MEB_NO)
    references ADOPT_MEMBER(ADOPT_MEB_NO);    
alter table RESERVE_PET add constraint FK_RESERVE_PET_GEN_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);    
alter table RESERVE_PET add constraint FK_RESERVE_PET_ADOPT_PET_NO foreign key(ADOPT_PET_NO)
    references ADOPT_PET(ADOPT_PET_NO) ;    
alter table ADOPT_PET_PHOTO add constraint FK_ADOPT_PET_PHOTO_ADOPT_PET_NO foreign key(ADOPT_PET_NO)
	references ADOPT_PET(ADOPT_PET_NO)  ;    
alter table PET_CLASS_LIST add constraint FK_PET_CLASS_LIST_ADOPT_PET_NO foreign key(ADOPT_PET_NO)
    references ADOPT_PET(ADOPT_PET_NO) ;
alter table PET_CLASS_LIST add constraint FK_PET_CLASS_LIST_PET_CLASS_NO foreign key(PET_CLASS_NO)
    references  PET_CLASS(PET_CLASS_NO) ;
    alter table STORED_VAL_RECORD add constraint FK_STORED_VAL_RECORD_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);
alter table ADOPT_MEMBER_REPORT add constraint FK_ADOPT_MEMBER_REPORT_ADOPT_MEB_NO foreign key(ADOPT_MEB_NO)
		references ADOPT_MEMBER(ADOPT_MEB_NO);
alter table ADOPT_MEMBER_REPORT add constraint FK_ADOPT_MEMBER_REPORT_GENERAL_MEB_NO foreign key(GEN_MEB_NO)
		references GENERAL_MEMBER(GEN_MEB_NO);
alter table GENERAL_MEMBER_PET add constraint FK_GENERAL_MEMBER_PET_GEN_MEB_NO foreign key(GEN_MEB_NO)
		references GENERAL_MEMBER(GEN_MEB_NO);
alter table GENERAL_MEMBER_PET add constraint FK_GENERAL_MEMBER_PET_ADOPT_PET_NO foreign key(ADOPT_PET_NO)
		references ADOPT_PET(ADOPT_PET_NO);
alter table GENERAL_MEMBER_PET add constraint FK_GENERAL_MEMBER_PET_PET_CLASS_NO foreign key(PET_CLASS_NO)
		references PET_CLASS(PET_CLASS_NO);
alter table GENERAL_MEMBER_PET_PHOTOS add constraint FK_GENERAL_MEMBER_PET_PHOTOS_GEN_MEB_NO foreign key(GEN_MEB_NO)
		references GENERAL_MEMBER(GEN_MEB_NO);
alter table FOLLOW_PET add constraint FK_FOLLOW_PET_GEN_MEB_NO foreign key(GEN_MEB_NO)
	references GENERAL_MEMBER(GEN_MEB_NO);
alter table FOLLOW_PET add constraint FK_FOLLOW_PET_ADOPT_PET_NO foreign key(ADOPT_PET_NO)
	references ADOPT_PET(ADOPT_PET_NO);
alter table PET_CLASS_LIST add constraint FK_PET_CLASS_LIST_GEN_MEB_PET_NO foreign key(GEN_MEB_PET_NO)
	references GENERAL_MEMBER_PET(GEN_MEB_PET_NO);
alter table FORUM_ARTICLE add constraint FK_FORUM_ARTICLE_FORUM_ARTICLE_CLS_NO foreign key(FORUM_ARTICLE_CLS_NO)
    references FORUM_ARTICLE_CLS(FORUM_ARTICLE_CLS_NO);
alter table FORUM_ARTICLE add constraint FK_FORUM_ARTICLE_GEN_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);
alter table FORUM_ARTICLE_REPORT add constraint FK_FORUM_ARTICLE_REPORT_FORUM_ARTICLE_NO foreign key(FORUM_ARTICLE_NO)
    references FORUM_ARTICLE(FORUM_ARTICLE_NO);
alter table FORUM_ARTICLE_REPORT add constraint FK_FORUM_ARTICLE_REPORT_GEN_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);
alter table EMP_PURVIEW add constraint FK_EMP_PURVIEW_EMP_NO foreign key(EMP_NO)
     references EMP(EMP_NO);
alter table EMP_PURVIEW add constraint FK_EMP_PURVIEW_FUNCTION_NO foreign key(FUNCTION_NO)
     references EMP_FUNCTION(FUNCTION_NO);
alter table ADOPT_APPLY add constraint FK_ADOPT_APPLY_ADOPT_MEB_NO foreign key(ADOPT_MEB_NO)
    references ADOPT_MEMBER(ADOPT_MEB_NO);
alter table ADOPT_APPLY add constraint FK_ADOPT_APPLY_GEN_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);
alter table ADOPT_APPLY add constraint FK_ADOPT_APPLY_ADOPT_PET_NO foreign key(ADOPT_PET_NO)
    references ADOPT_PET(ADOPT_PET_NO);  
alter table PRODUCT add constraint FK_PRODUCT_PRODUCT_TYPE_NO foreign key(PRODUCT_TYPE_NO)
    references PRODUCT_TYPE(PRODUCT_TYPE_NO);  
alter table PRODUCT_PHOTOS add constraint FK_PRODUCT_PHOTOS_PRODUCT_NO foreign key(PRODUCT_NO)
    references PRODUCT(PRODUCT_NO);  
alter table TRACK_PRODUCT add constraint FK_TRACK_PRODUCT_GEN_MEB_NO foreign key(GEN_MEB_NO)
    references GENERAL_MEMBER(GEN_MEB_NO);     
alter table TRACK_PRODUCT add constraint FK_TRACK_PRODUCT_PRODUCT_NO foreign key(PRODUCT_NO)
    references PRODUCT(PRODUCT_NO); 
alter table PRODUCT_PROMOTIONS_DETAIL add constraint FK_PRODUCT_PROMOTIONS_DETAIL_PROMOT_NO foreign key(PROMOT_NO)
	references PROMOTIONS(PROMOT_NO);
alter table PRODUCT_PROMOTIONS_DETAIL add constraint FK_PRODUCT_PROMOTIONS_DETAIL_PRODUCT_NO foreign key(PRODUCT_NO)
	references PRODUCT(PRODUCT_NO);
alter table ORDER_FORM add constraint FK_ORDER_FORM_GEN_MEB_NO foreign key(GEN_MEB_NO)
	references GENERAL_MEMBER(GEN_MEB_NO);
alter table ORDER_FORM add constraint FK_ORDER_FORM_PAY_NO foreign key(PAY_NO)
	references PAY_METHOD(PAY_NO);
alter table ORDER_FORM add constraint FK_ORDER_FORM_LOGISTICS_NO foreign key(LOGISTICS_NO)
		references LOGISTICS(LOGISTICS_NO);
alter table ORDER_FORM add constraint FK_ORDER_FORM_PROMOT_NO foreign key(PROMOT_NO)
	references PROMOTIONS(PROMOT_NO);
alter table SHOPPING_CART add constraint FK_SHOPPING_CART_GEN_MEB_NO foreign key(GEN_MEB_NO)
	references GENERAL_MEMBER(GEN_MEB_NO);
alter table SHOPPING_CART add constraint FK_SHOPPING_CART_PRODUCT_NO foreign key(PRODUCT_NO)
	references PRODUCT(PRODUCT_NO);
alter table APPEAL add constraint FK_APPEAL_GEN_MEB_NO  foreign key(GEN_MEB_NO)
	references GENERAL_MEMBER(GEN_MEB_NO);
alter table APPEAL add constraint FK_APPEAL_ORDER_NO foreign key(ORDER_NO)
	references  ORDER_FORM(ORDER_NO);
alter table ORDER_DETAIL add constraint FK_ORDER_DETAIL_ORDER_NO foreign key(ORDER_NO)
	references  ORDER_FORM(ORDER_NO);
alter table ORDER_DETAIL add constraint FK_ORDER_DETAIL_PRODUCT_NO foreign key(PRODUCT_NO)
	references  PRODUCT(PRODUCT_NO);
