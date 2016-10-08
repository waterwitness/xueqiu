.class public Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;
.super Ljava/lang/Object;
.source "InvestmentCalendarEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL_DAY:Ljava/lang/String; = "all_day"

.field public static final AUTHOR_ID:Ljava/lang/String; = "author_id"

.field public static final BEST_EDITOR_ID:Ljava/lang/String; = "best_editor_id"

.field public static final CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE_TIME:Ljava/lang/String; = "date_time"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_STOCK_EVENT:Ljava/lang/String; = "is_stock_event"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final PRIVACY:Ljava/lang/String; = "privacy"

.field public static final PRIVACY_READ:Ljava/lang/String; = "privacy_read"

.field public static final PRIVACY_WRITE:Ljava/lang/String; = "privacy_write"

.field public static final SHARE_ID:Ljava/lang/String; = "share_id"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final STAT:Ljava/lang/String; = "stat"

.field public static final STAT_ALERT:Ljava/lang/String; = "alert"

.field public static final STAT_SHARE:Ljava/lang/String; = "share"

.field public static final STOCK:Ljava/lang/String; = "stock"

.field public static final STOCK_EVENT_TYPE:Ljava/lang/String; = "stock_event_type"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAlert:Ljava/lang/String;

.field public mAll_day:Z

.field public mAuthor_id:J

.field public mBest_editor_id:J

.field public mCalendar_id:J

.field public mCalendar_title:Ljava/lang/String;

.field public mColor:Ljava/lang/String;

.field public mCreated_at:J

.field public mDescription:Ljava/lang/String;

.field public mEDateTime:Ljava/lang/String;

.field public mEnd_Date:J

.field public mId:J

.field public mIsStockEvent:Z

.field public mLocation:Ljava/lang/String;

.field public mPrivacy_read:Ljava/lang/String;

.field public mPrivacy_write:Ljava/lang/String;

.field public mSDateTime:Ljava/lang/String;

.field public mShare:Ljava/lang/String;

.field public mShare_id:J

.field public mStart_date:J

.field public mStat:Ljava/lang/String;

.field public mStock:Ljava/lang/String;

.field public mStock_event_type:I

.field public mTimezone:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mlast_modified:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAuthor_id:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    .line 98
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_title:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mColor:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    .line 104
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mUrl:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mBest_editor_id:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mlast_modified:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCreated_at:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare_id:J

    .line 114
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_read:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_write:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    :cond_1
    move v1, v2

    .line 121
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAuthor_id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mColor:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 134
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mBest_editor_id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mlast_modified:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCreated_at:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare_id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_read:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mPrivacy_write:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStat:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mIsStockEvent:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v1, v2

    .line 153
    goto :goto_1
.end method
