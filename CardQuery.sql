create table MasterCard(
REQUESTING_CONTROL_ACCOUNT varchar(100),
BASIC_CONTROL_ACCOUNT varchar(100),
CARDMEMBER_ACCOUNT_NUMBER varchar(100),
SE_NUMBER varchar(100),
ROC_ID varchar(100),
DB_CR_INDICATOR varchar(100),
TRANSACTION_TYPE_CODE varchar(100),
FINANCIAL_CATEGORY varchar(100),
BATCH_NUMBER varchar(100),
DATE_OF_CHARGE varchar(100),
LOCAL_CURRENCY_AMOUNT varchar(100),
CURRENCY_CODE varchar(100),
CAPTURE_DATE varchar(100),
PROCESS_DATE varchar(100),
BILLING_DATE varchar(100),
BILLING_AMOUNT varchar(100),
SALES_TAX_AMOUNT varchar(100),
TIP_AMOUNT varchar(100),
CARDMEMBER_NAME varchar(100),
SPECIAL_BILL_IND varchar(100),
ORIGINATING_BCA varchar(100),
ORIGINATING_ACCOUNT_NUMBER varchar(100),
CM_REFERENCE_NUMBER varchar(100),
SUPPLIER_REFERENCE_NUMBER varchar(100),
SHIP_TO_ZIP varchar(100),
SIC_CODE varchar(100),
COST_CENTER varchar(100),
EMPLOYEE_ID varchar(100),
SOCIAL_SECURITY_HASH_CODE varchar(100),
UNIVERSALHASH_CODE varchar(100),
STREET varchar(100),
CITY varchar(100),
STATE varchar(100),
ZIP_PLUS__4 varchar(100),
TRANS_LIMIT varchar(100),
MONTHLY_LIMIT varchar(100),
EXPOSURE_LIMIT varchar(100),
REV_CODE varchar(100),
COMPANY_NAME varchar(100),
CHARGE_DESCRIPTION_LINE1 varchar(100),
CHARGE_DESCRIPTION_LINE2 varchar(100),
CHARGE_DESCRIPTION_LINE3 varchar(100),
CHARGE_DESCRIPTION_LINE4 varchar(100),
CAR_RENTAL_CUSTOMER_NAME varchar(100),
CAR_RENTAL_CITY varchar(100),
CAR_RENTAL_STATE varchar(100),
CAR_RENTAL_DATE varchar(100),
CAR_RETURN_CITY varchar(100),
CAR_RETURN_STATE varchar(100),
CAR_RETURN_DATE varchar(100),
CAR_RENTAL_DAYS varchar(100),
HOTEL_ARRIVAL_DATE varchar(100),
HOTEL_CITY varchar(100),
HOTEL_STATE varchar(100),
HOTEL_DEPART_DATE varchar(100),
HOTEL_STAY_DURATION varchar(100),
HOTEL_ROOM_RATE varchar(100),
AIR_AGENCY_NUMBER varchar(100),
AIR_TICKET_ISSUER varchar(100),
AIR_CLASS_OF_SERVICE varchar(100),
AIR_CARRIER_CODE varchar(100),
AIR_ROUTING varchar(100),
AIR_DEPARTURE_DATE varchar(100),
AIR_PASSENGER_NAME varchar(100),
TELE_DATE_OF_CALL varchar(100),
TELE_FROM_CITY varchar(100),
TELE_FROM_STATE varchar(100),
TELE_CALL_LENGTH varchar(100),
TELE_REFERENCE_NUMBER varchar(100),
TELE_TIME_OF_CALL varchar(100),
TELE_TO_NUMBER varchar(100),
INDUSTRY_CODE varchar(100),
SEQUENCE_NUMBER varchar(100),
MERCATOR_KEY varchar(100),
FEE_ALLOCATOR_IND varchar(100))

create procedure SP_ImportMasterCard

@REQUESTING_CONTROL_ACCOUNT varchar(100),
@BASIC_CONTROL_ACCOUNT varchar(100),
@CARDMEMBER_ACCOUNT_NUMBER varchar(100),
@SE_NUMBER varchar(100),
@ROC_ID varchar(100),
@DB_CR_INDICATOR varchar(100),
@TRANSACTION_TYPE_CODE varchar(100),
@FINANCIAL_CATEGORY varchar(100),
@BATCH_NUMBER varchar(100),
@DATE_OF_CHARGE varchar(100),
@LOCAL_CURRENCY_AMOUNT varchar(100),
@CURRENCY_CODE varchar(100),
@CAPTURE_DATE varchar(100),
@PROCESS_DATE varchar(100),
@BILLING_DATE varchar(100),
@BILLING_AMOUNT varchar(100),
@SALES_TAX_AMOUNT varchar(100),
@TIP_AMOUNT varchar(100),
@CARDMEMBER_NAME varchar(100),
@SPECIAL_BILL_IND varchar(100),
@ORIGINATING_BCA varchar(100),
@ORIGINATING_ACCOUNT_NUMBER varchar(100),
@CM_REFERENCE_NUMBER varchar(100),
@SUPPLIER_REFERENCE_NUMBER varchar(100),
@SHIP_TO_ZIP varchar(100),
@SIC_CODE varchar(100),
@COST_CENTER varchar(100),
@EMPLOYEE_ID varchar(100),
@SOCIAL_SECURITY_HASH_CODE varchar(100),
@UNIVERSALHASH_CODE varchar(100),
@STREET varchar(100),
@CITY varchar(100),
@STATE varchar(100),
@ZIP_PLUS__4 varchar(100),
@TRANS_LIMIT varchar(100),
@MONTHLY_LIMIT varchar(100),
@EXPOSURE_LIMIT varchar(100),
@REV_CODE varchar(100),
@COMPANY_NAME varchar(100),
@CHARGE_DESCRIPTION_LINE1 varchar(100),
@CHARGE_DESCRIPTION_LINE2 varchar(100),
@CHARGE_DESCRIPTION_LINE3 varchar(100),
@CHARGE_DESCRIPTION_LINE4 varchar(100),
@CAR_RENTAL_CUSTOMER_NAME varchar(100),
@CAR_RENTAL_CITY varchar(100),
@CAR_RENTAL_STATE varchar(100),
@CAR_RENTAL_DATE varchar(100),
@CAR_RETURN_CITY varchar(100),
@CAR_RETURN_STATE varchar(100),
@CAR_RETURN_DATE varchar(100),
@CAR_RENTAL_DAYS varchar(100),
@HOTEL_ARRIVAL_DATE varchar(100),
@HOTEL_CITY varchar(100),
@HOTEL_STATE varchar(100),
@HOTEL_DEPART_DATE varchar(100),
@HOTEL_STAY_DURATION varchar(100),
@HOTEL_ROOM_RATE varchar(100),
@AIR_AGENCY_NUMBER varchar(100),
@AIR_TICKET_ISSUER varchar(100),
@AIR_CLASS_OF_SERVICE varchar(100),
@AIR_CARRIER_CODE varchar(100),
@AIR_ROUTING varchar(100),
@AIR_DEPARTURE_DATE varchar(100),
@AIR_PASSENGER_NAME varchar(100),
@TELE_DATE_OF_CALL varchar(100),
@TELE_FROM_CITY varchar(100),
@TELE_FROM_STATE varchar(100),
@TELE_CALL_LENGTH varchar(100),
@TELE_REFERENCE_NUMBER varchar(100),
@TELE_TIME_OF_CALL varchar(100),
@TELE_TO_NUMBER varchar(100),
@INDUSTRY_CODE varchar(100),
@SEQUENCE_NUMBER varchar(100),
@MERCATOR_KEY varchar(100),
@FEE_ALLOCATOR_IND varchar(100)

As
Begin
	INSERT INTO MasterCard
		(
		REQUESTING_CONTROL_ACCOUNT,
		BASIC_CONTROL_ACCOUNT,
		CARDMEMBER_ACCOUNT_NUMBER,
		SE_NUMBER,
		ROC_ID,
		DB_CR_INDICATOR,
		TRANSACTION_TYPE_CODE,
		FINANCIAL_CATEGORY,
		BATCH_NUMBER,
		DATE_OF_CHARGE,
		LOCAL_CURRENCY_AMOUNT,
		CURRENCY_CODE,
		CAPTURE_DATE,
		PROCESS_DATE,
		BILLING_DATE,
		BILLING_AMOUNT,
		SALES_TAX_AMOUNT,
		TIP_AMOUNT,
		CARDMEMBER_NAME,
		SPECIAL_BILL_IND,
		ORIGINATING_BCA,
		ORIGINATING_ACCOUNT_NUMBER,
		CM_REFERENCE_NUMBER,
		SUPPLIER_REFERENCE_NUMBER,
		SHIP_TO_ZIP,
		SIC_CODE,
		COST_CENTER,
		EMPLOYEE_ID,
		SOCIAL_SECURITY_HASH_CODE,
		UNIVERSALHASH_CODE,
		STREET,
		CITY,
		STATE,
		ZIP_PLUS__4,
		TRANS_LIMIT,
		MONTHLY_LIMIT,
		EXPOSURE_LIMIT,
		REV_CODE,
		COMPANY_NAME,
		CHARGE_DESCRIPTION_LINE1,
		CHARGE_DESCRIPTION_LINE2,
		CHARGE_DESCRIPTION_LINE3,
		CHARGE_DESCRIPTION_LINE4,
		CAR_RENTAL_CUSTOMER_NAME,
		CAR_RENTAL_CITY,
		CAR_RENTAL_STATE,
		CAR_RENTAL_DATE,
		CAR_RETURN_CITY,
		CAR_RETURN_STATE,
		CAR_RETURN_DATE,
		CAR_RENTAL_DAYS,
		HOTEL_ARRIVAL_DATE,
		HOTEL_CITY,
		HOTEL_STATE,
		HOTEL_DEPART_DATE,
		HOTEL_STAY_DURATION,
		HOTEL_ROOM_RATE,
		AIR_AGENCY_NUMBER,
		AIR_TICKET_ISSUER,
		AIR_CLASS_OF_SERVICE,
		AIR_CARRIER_CODE,
		AIR_ROUTING,
		AIR_DEPARTURE_DATE,
		AIR_PASSENGER_NAME,
		TELE_DATE_OF_CALL,
		TELE_FROM_CITY,
		TELE_FROM_STATE,
		TELE_CALL_LENGTH,
		TELE_REFERENCE_NUMBER,
		TELE_TIME_OF_CALL,
		TELE_TO_NUMBER,
		INDUSTRY_CODE,
		SEQUENCE_NUMBER,
		MERCATOR_KEY,
		FEE_ALLOCATOR_IND
		)
	VALUES
		(
							RTRIM(LTRIM(@REQUESTING_CONTROL_ACCOUNT)),
							RTRIM(LTRIM(@BASIC_CONTROL_ACCOUNT)),
							RTRIM(LTRIM(@CARDMEMBER_ACCOUNT_NUMBER)) ,
							RTRIM(LTRIM(@SE_NUMBER)) ,
							RTRIM(LTRIM(@ROC_ID)),
							RTRIM(LTRIM(@DB_CR_INDICATOR)),
							RTRIM(LTRIM(@TRANSACTION_TYPE_CODE)) ,							
							
							RTRIM(LTRIM(@FINANCIAL_CATEGORY)),
							RTRIM(LTRIM(@BATCH_NUMBER)),
							RTRIM(LTRIM(@DATE_OF_CHARGE)),
							RTRIM(LTRIM(@LOCAL_CURRENCY_AMOUNT)),
							RTRIM(LTRIM(@CURRENCY_CODE)),
							RTRIM(LTRIM(@CAPTURE_DATE)) ,
							RTRIM(LTRIM(@PROCESS_DATE)) ,
							RTRIM(LTRIM(@BILLING_DATE)),
							RTRIM(LTRIM(@BILLING_AMOUNT)),
							RTRIM(LTRIM(@SALES_TAX_AMOUNT)),
							
							RTRIM(LTRIM(@TIP_AMOUNT)),
							RTRIM(LTRIM(@CARDMEMBER_NAME)),
							RTRIM(LTRIM(@SPECIAL_BILL_IND)),
							RTRIM(LTRIM(@ORIGINATING_BCA)),
							RTRIM(LTRIM(@ORIGINATING_ACCOUNT_NUMBER)),
							RTRIM(LTRIM(@CM_REFERENCE_NUMBER)) ,
							RTRIM(LTRIM(@SUPPLIER_REFERENCE_NUMBER)) ,
							RTRIM(LTRIM(@SHIP_TO_ZIP)),
							RTRIM(LTRIM(@SIC_CODE)),
							RTRIM(LTRIM(@COST_CENTER)),
							
							RTRIM(LTRIM(@EMPLOYEE_ID)),
							RTRIM(LTRIM(@SOCIAL_SECURITY_HASH_CODE)),
							RTRIM(LTRIM(@UNIVERSALHASH_CODE)),
							RTRIM(LTRIM(@STREET)),
							RTRIM(LTRIM(@CITY)),
							RTRIM(LTRIM(@STATE)) ,
							RTRIM(LTRIM(@ZIP_PLUS__4)) ,
							RTRIM(LTRIM(@TRANS_LIMIT)),
							RTRIM(LTRIM(@MONTHLY_LIMIT)),
							RTRIM(LTRIM(@EXPOSURE_LIMIT)),
							
							RTRIM(LTRIM(@REV_CODE)),
							RTRIM(LTRIM(@COMPANY_NAME)),
							RTRIM(LTRIM(@CHARGE_DESCRIPTION_LINE1)),
							RTRIM(LTRIM(@CHARGE_DESCRIPTION_LINE2)),
							RTRIM(LTRIM(@CHARGE_DESCRIPTION_LINE3)),
							RTRIM(LTRIM(@CHARGE_DESCRIPTION_LINE4)),
							RTRIM(LTRIM(@CAR_RENTAL_CUSTOMER_NAME)) ,
							RTRIM(LTRIM(@CAR_RENTAL_CITY)) ,
							RTRIM(LTRIM(@CAR_RENTAL_STATE)),
							RTRIM(LTRIM(@CAR_RENTAL_DATE)),
							
							RTRIM(LTRIM(@CAR_RETURN_CITY)) ,
							RTRIM(LTRIM(@CAR_RETURN_STATE)),
							RTRIM(LTRIM(@CAR_RETURN_DATE)),
							
							
							
							RTRIM(LTRIM(@CAR_RENTAL_DAYS)),
							RTRIM(LTRIM(@HOTEL_ARRIVAL_DATE)),
							RTRIM(LTRIM(@HOTEL_CITY)),
							RTRIM(LTRIM(@HOTEL_STATE)),
							RTRIM(LTRIM(@HOTEL_DEPART_DATE)),
							RTRIM(LTRIM(@HOTEL_STAY_DURATION)),
							RTRIM(LTRIM(@HOTEL_ROOM_RATE)) ,
							RTRIM(LTRIM(@AIR_AGENCY_NUMBER)) ,
							RTRIM(LTRIM(@AIR_TICKET_ISSUER)),
							RTRIM(LTRIM(@AIR_CLASS_OF_SERVICE)),
							
							RTRIM(LTRIM(@AIR_CARRIER_CODE)),
							RTRIM(LTRIM(@AIR_ROUTING)),
							RTRIM(LTRIM(@AIR_DEPARTURE_DATE)),
							RTRIM(LTRIM(@AIR_PASSENGER_NAME)),
							RTRIM(LTRIM(@TELE_DATE_OF_CALL)),
							RTRIM(LTRIM(@TELE_FROM_CITY)),
							RTRIM(LTRIM(@TELE_FROM_STATE)) ,
							RTRIM(LTRIM(@TELE_CALL_LENGTH)) ,
							RTRIM(LTRIM(@TELE_REFERENCE_NUMBER)),
							RTRIM(LTRIM(@TELE_TIME_OF_CALL)),
							
							RTRIM(LTRIM(@TELE_TO_NUMBER)),
							RTRIM(LTRIM(@INDUSTRY_CODE)),
							RTRIM(LTRIM(@SEQUENCE_NUMBER)),
							RTRIM(LTRIM(@MERCATOR_KEY)),
							RTRIM(LTRIM(@FEE_ALLOCATOR_IND))
		)
End



alter table MasterCard
Add BLANK varchar(10)

select * from MasterCard

delete from MasterCard

select * from MTSNew

delete from MTSNew

select DATE_OF_CHARGE,MERCATOR_KEY
from MasterCard

select * from MasterCard
where DB_CR_INDICATOR = 'D'

select blank from MasterCard

Create Procedure SP_MasterCardUpdate
As
Begin
	UPDATE MasterCard 
	SET DB_CR_INDICATOR = '1' WHERE DB_CR_INDICATOR = 'D'

	UPDATE MasterCard 
	SET DB_CR_INDICATOR = '2' WHERE DB_CR_INDICATOR = 'C'

	UPDATE MasterCard 
	SET DATE_OF_CHARGE = MERCATOR_KEY WHERE DATE_OF_CHARGE = ''

	UPDATE MasterCard 
	SET blank = NULL
End 

SP_MasterCardUpdate;select * from MasterCard

select blank as '" "' from MasterCard
