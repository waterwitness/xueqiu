.class public final Lcom/xueqiu/android/base/b/e;
.super Lcom/xueqiu/android/base/b/a;
.source "InvestmentCalendarClient.java"


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/ae;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 250
    const-string v0, "/calendar/cal/events"

    .line 4044
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v0, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "symbol"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v0, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "start_date"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v0, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "end_date"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v0, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page"

    const/4 v5, 0x0

    .line 258
    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    move-object v0, v1

    .line 269
    :goto_1
    new-instance v1, Lcom/xueqiu/android/base/b/e$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/e$2;-><init>(Lcom/xueqiu/android/base/b/e;)V

    .line 318
    invoke-static {v2, v0, p7, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 320
    return-object v0

    .line 259
    :cond_0
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v0, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "id"

    .line 262
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v0, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "start_date"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v0, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "end_date"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v0, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page"

    const/4 v5, 0x0

    .line 265
    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    const/4 v0, -0x1

    if-ne p6, v0, :cond_2

    const/4 v0, 0x0

    .line 266
    :goto_2
    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static a(Lorg/json/JSONObject;Z)Lcom/xueqiu/android/stock/model/InvestmentCalendar;
    .locals 4

    .prologue
    .line 417
    new-instance v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/InvestmentCalendar;-><init>()V

    .line 419
    if-eqz p1, :cond_0

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    .line 423
    :cond_0
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    .line 426
    :cond_1
    const-string v1, "author_id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const-string v1, "author_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mAuthor_id:J

    .line 429
    :cond_2
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mUrl:Ljava/lang/String;

    .line 432
    :cond_3
    const-string v1, "color"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    const-string v1, "color"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    .line 435
    :cond_4
    const-string v1, "timezone"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    const-string v1, "timezone"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTimezone:Ljava/lang/String;

    .line 438
    :cond_5
    const-string v1, "title"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 439
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    .line 441
    :cond_6
    const-string v1, "description"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 442
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mDescription:Ljava/lang/String;

    .line 444
    :cond_7
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 445
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mLocation:Ljava/lang/String;

    .line 447
    :cond_8
    const-string v1, "followers_count"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    const-string v1, "followers_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mFollowers_count:I

    .line 450
    :cond_9
    const-string v1, "created_at"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 451
    const-string v1, "created_at"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mCreated_at:J

    .line 453
    :cond_a
    const-string v1, "symbol"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 454
    const-string v1, "symbol"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mSymbol:Ljava/lang/String;

    .line 456
    :cond_b
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 457
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    .line 459
    :cond_c
    const-string v1, "privacy_read"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 460
    const-string v1, "privacy_read"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_read:Ljava/lang/String;

    .line 462
    :cond_d
    const-string v1, "privacy_write"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 463
    const-string v1, "privacy_write"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_write:Ljava/lang/String;

    .line 465
    :cond_e
    const-string v1, "stat"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 466
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStat:Ljava/lang/String;

    .line 468
    :cond_f
    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;
    .locals 4

    .prologue
    .line 32
    .line 12090
    new-instance v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;-><init>()V

    .line 12092
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12093
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    .line 12095
    :cond_0
    const-string v1, "author_id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12096
    const-string v1, "author_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAuthor_id:J

    .line 12098
    :cond_1
    const-string v1, "calendar_id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12099
    const-string v1, "calendar_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    .line 12101
    :cond_2
    const-string v1, "title"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12102
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    .line 12104
    :cond_3
    const-string v1, "timezone"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12105
    const-string v1, "timezone"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    .line 12107
    :cond_4
    const-string v1, "color"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12108
    const-string v1, "color"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mColor:Ljava/lang/String;

    .line 12110
    :cond_5
    const-string v1, "start_date"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12111
    const-string v1, "start_date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    .line 12113
    :cond_6
    const-string v1, "end_date"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12114
    const-string v1, "end_date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    .line 12116
    :cond_7
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12117
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    .line 12119
    :cond_8
    const-string v1, "description"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12120
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    .line 12122
    :cond_9
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 12123
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mUrl:Ljava/lang/String;

    .line 12125
    :cond_a
    const-string v1, "stock"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 12126
    const-string v1, "stock"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    .line 12128
    :cond_b
    const-string v1, "stock_event_type"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 12129
    const-string v1, "stock_event_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    .line 12131
    :cond_c
    const-string v1, "best_editor_id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 12132
    const-string v1, "best_editor_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mBest_editor_id:J

    .line 12134
    :cond_d
    const-string v1, "last_modified"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 12135
    const-string v1, "last_modified"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mlast_modified:J

    .line 12137
    :cond_e
    const-string v1, "created_at"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 12138
    const-string v1, "created_at"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCreated_at:J

    .line 12140
    :cond_f
    const-string v1, "all_day"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 12141
    const-string v1, "all_day"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    .line 12143
    :cond_10
    const-string v1, "share_id"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12144
    const-string v1, "share_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare_id:J

    .line 12146
    :cond_11
    const-string v1, "privacy_read"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 12147
    const-string v1, "privacy_read"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_read:Ljava/lang/String;

    .line 12149
    :cond_12
    const-string v1, "privacy_write"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 12150
    const-string v1, "privacy_write"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_write:Ljava/lang/String;

    .line 12152
    :cond_13
    const-string v1, "stat"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 12153
    const-string v1, "stat"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    .line 12155
    :cond_14
    const-string v1, "is_stock_event"

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 12156
    const-string v1, "is_stock_event"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    .line 32
    :cond_15
    return-object v0
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 13074
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u661f\u671f\u65e5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u661f\u671f\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u661f\u671f\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u661f\u671f\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u661f\u671f\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u661f\u671f\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u661f\u671f\u516d"

    aput-object v2, v0, v1

    .line 13075
    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    .line 32
    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 399
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 400
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 401
    invoke-static {v3, p1}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Z)Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    move-result-object v3

    .line 402
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-object v1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 472
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 473
    :goto_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 472
    goto :goto_0

    :cond_1
    move v1, v2

    .line 473
    goto :goto_1
.end method

.method private static a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)[Lorg/apache/http/message/BasicNameValuePair;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0xa

    .line 515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "title"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 524
    iget-boolean v3, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 526
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_0
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "start_date"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "calendar_id"

    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "all_day"

    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "timezone"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    .line 545
    iget-boolean v3, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v3, :cond_2

    .line 546
    iget-object v3, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 547
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "end_date"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 555
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 560
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "location"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 565
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "alert"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_6
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-nez v0, :cond_b

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 571
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "alert"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 575
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "stock"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_8
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "share"

    iget-object v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    const-string v0, "1"

    iget-object v3, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 582
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "stock_event_type"

    iget v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_9
    :goto_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "privacy"

    const-string v4, "0"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 596
    new-array v4, v3, [Lorg/apache/http/message/BasicNameValuePair;

    .line 597
    :goto_2
    if-ge v1, v3, :cond_c

    .line 598
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    aput-object v0, v4, v1

    .line 597
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 535
    :cond_a
    const-string v0, "0"

    goto/16 :goto_0

    .line 586
    :cond_b
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "stock_event_type"

    iget v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 600
    :cond_c
    return-object v4
.end method

.method static synthetic b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/xueqiu/android/base/b/e;->d(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONObject;Z)Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 361
    if-eqz p0, :cond_2

    .line 363
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :try_start_1
    const-string v1, "mine"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "mine"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 367
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    :cond_0
    const-string v1, "other"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    const-string v1, "other"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 375
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/e;->a(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    :cond_1
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 487
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 488
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 490
    const-string v1, "/calendar/event/delete"

    .line 6044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 490
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 492
    return-object v0
.end method

.method public final a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 682
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 683
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "alert"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 686
    const-string v1, "/calendar/event/set_alert"

    .line 12044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 686
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 688
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 337
    const-string v0, "/calendar/cal/list"

    .line 5044
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 339
    const/4 v1, 0x0

    new-instance v2, Lcom/xueqiu/android/base/b/e$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/e$3;-><init>(Lcom/xueqiu/android/base/b/e;)V

    invoke-static {v0, v1, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 354
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    const-string v0, "/calendar/event/create"

    .line 7044
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {p1}, Lcom/xueqiu/android/base/b/e;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)[Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 498
    return-object v0
.end method

.method public final a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 654
    const-string v0, "/calendar/cal/show"

    .line 11044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    new-array v0, v2, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "symbol"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v5

    .line 663
    :goto_0
    new-instance v2, Lcom/xueqiu/android/base/b/e$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/e$5;-><init>(Lcom/xueqiu/android/base/b/e;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 678
    return-object v0

    .line 660
    :cond_0
    new-array v0, v2, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v5

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 245
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 1325
    :cond_0
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 2173
    :cond_1
    const-string v0, "/calendar/cal/home"

    .line 3044
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2175
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "start_date"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "end_date"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 2178
    new-instance v2, Lcom/xueqiu/android/base/b/e$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/e$1;-><init>(Lcom/xueqiu/android/base/b/e;)V

    .line 2227
    invoke-static {v0, v1, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2228
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/stock/model/EventCalListPair;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/stock/model/EventCalListPair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/calendar/cal/list"

    .line 8115
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?request_method=get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/calendar/event/show"

    .line 9115
    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?request_method=get&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#47bce5c74f#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 619
    const-string v0, "/apimerge/result"

    .line 10044
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 619
    new-instance v2, Lcom/xueqiu/android/base/b/e$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/e$4;-><init>(Lcom/xueqiu/android/base/b/e;)V

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 640
    new-instance v1, Lcom/xueqiu/android/base/b/z;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/z;-><init>()V

    .line 10198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 641
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 642
    return-object v0
.end method

.method public final b(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    const-string v0, "/calendar/event/modify"

    .line 8044
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {p1}, Lcom/xueqiu/android/base/b/e;->a(Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)[Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;-><init>()V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/xueqiu/android/base/b/e;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 504
    return-object v0
.end method
