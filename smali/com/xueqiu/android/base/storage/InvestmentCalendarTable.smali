.class public final Lcom/xueqiu/android/base/storage/InvestmentCalendarTable;
.super Ljava/lang/Object;
.source "InvestmentCalendarTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTHOR_ID:Ljava/lang/String; = "author_id"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE t_investment_calendar_table(investment_calendar_id INTEGER PRIMARY KEY AUTOINCREMENT, author_id INTEGER,url TEXT,color TEXT,timezone TEXT,title TEXT,description TEXT,location TEXT,followers_count INTEGER,created_at INTEGER,symbol TEXT,type INTEGER,privacy_read TEXT,privacy_write TEXT,stat TEXT,stat_color TEXT,stat_alert TEXT,stat_sort INTEGER,stat_show TINYINT(1) DEFAULT 0,is_mine TINYINT(1) DEFAULT 0)"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FOLLOWERS_COUNT:Ljava/lang/String; = "followers_count"

.field public static final INVESTMENT_CALENDAR_ID:Ljava/lang/String; = "investment_calendar_id"

.field public static final IS_MINE:Ljava/lang/String; = "is_mine"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final PRIVACY_READ:Ljava/lang/String; = "privacy_read"

.field public static final PRIVACY_WRITE:Ljava/lang/String; = "privacy_write"

.field public static final STAT:Ljava/lang/String; = "stat"

.field public static final STAT_ALERT:Ljava/lang/String; = "stat_alert"

.field public static final STAT_COLOR:Ljava/lang/String; = "stat_color"

.field public static final STAT_SHOW:Ljava/lang/String; = "stat_show"

.field public static final STAT_SORT:Ljava/lang/String; = "stat_sort"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "t_investment_calendar_table"

.field private static final TAG:Ljava/lang/String; = "InvestmentCalendar"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "investment_calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "followers_count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "created_at"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "privacy_read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "privacy_write"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "stat"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "stat_color"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "stat_alert"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "stat_sort"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "stat_show"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "is_mine"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/InvestmentCalendarTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/stock/model/InvestmentCalendar;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string v1, "investment_calendar_id"

    iget-wide v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v1, "author_id"

    iget-wide v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mAuthor_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "color"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "title"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "description"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "location"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "followers_count"

    iget v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mFollowers_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v1, "created_at"

    iget-wide v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mCreated_at:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "type"

    iget v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v1, "privacy_read"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_read:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "privacy_read"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_write:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "stat"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "color"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "stat_alert"

    iget-object v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatAlert:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "stat_sort"

    iget v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatSort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v1, "stat_show"

    iget-boolean v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatShow:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    const-string v1, "is_mine"

    iget-boolean v2, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    return-object v0
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    const-string v0, "InvestmentCalendar"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 71
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 72
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    :cond_2
    new-instance v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    invoke-direct {v3}, Lcom/xueqiu/android/stock/model/InvestmentCalendar;-><init>()V

    .line 76
    const-string v0, "investment_calendar_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    .line 77
    const-string v0, "author_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mAuthor_id:J

    .line 79
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mUrl:Ljava/lang/String;

    .line 80
    const-string v0, "color"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    .line 81
    const-string v0, "timezone"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTimezone:Ljava/lang/String;

    .line 82
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    .line 84
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mDescription:Ljava/lang/String;

    .line 85
    const-string v0, "location"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mLocation:Ljava/lang/String;

    .line 86
    const-string v0, "followers_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mFollowers_count:I

    .line 87
    const-string v0, "created_at"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mCreated_at:J

    .line 89
    const-string v0, "symbol"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mSymbol:Ljava/lang/String;

    .line 90
    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    .line 91
    const-string v0, "privacy_read"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_read:Ljava/lang/String;

    .line 92
    const-string v0, "privacy_write"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_write:Ljava/lang/String;

    .line 94
    const-string v0, "stat"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStat:Ljava/lang/String;

    .line 95
    const-string v0, "stat_color"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    .line 96
    const-string v0, "stat_alert"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatAlert:Ljava/lang/String;

    .line 97
    const-string v0, "stat_sort"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatSort:I

    .line 98
    const-string v0, "stat_show"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatShow:Z

    .line 99
    const-string v0, "is_mine"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v1, v3, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    move-object v0, v3

    .line 101
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 98
    goto :goto_1

    :cond_4
    move v1, v2

    .line 99
    goto :goto_2
.end method
