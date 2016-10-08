.class public Lcom/xueqiu/android/stock/model/InvestmentCalendar;
.super Ljava/lang/Object;
.source "InvestmentCalendar.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHOR_ID:Ljava/lang/String; = "author_id"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FOLLOWERS_COUNT:Ljava/lang/String; = "followers_count"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_MINE:Ljava/lang/String; = "is_mine"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MINE:Ljava/lang/String; = "mine"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final PRIVACY_READ:Ljava/lang/String; = "privacy_read"

.field public static final PRIVACY_WRITE:Ljava/lang/String; = "privacy_write"

.field public static final STAT:Ljava/lang/String; = "stat"

.field public static final STAT_ALERT:Ljava/lang/String; = "alert"

.field public static final STAT_SHOW:Ljava/lang/String; = "show"

.field public static final STAT_SORT:Ljava/lang/String; = "sort"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAuthor_id:J

.field public mColor:Ljava/lang/String;

.field public mCreated_at:J

.field public mDescription:Ljava/lang/String;

.field public mFollowers_count:I

.field public mId:J

.field public mIsMine:Z

.field public mLocation:Ljava/lang/String;

.field public mPrivacy_read:Ljava/lang/String;

.field public mPrivacy_write:Ljava/lang/String;

.field public mStat:Ljava/lang/String;

.field public mStatAlert:Ljava/lang/String;

.field public mStatColor:Ljava/lang/String;

.field public mStatShow:Z

.field public mStatSort:I

.field public mSymbol:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mType:I

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/InvestmentCalendar$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mAuthor_id:J

    .line 84
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mUrl:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTimezone:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mDescription:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mLocation:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mFollowers_count:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mCreated_at:J

    .line 92
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mSymbol:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    .line 94
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_read:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_write:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStat:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatColor:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatAlert:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatSort:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatShow:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/stock/model/InvestmentCalendar$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/model/InvestmentCalendar;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mAuthor_id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mColor:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTimezone:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mFollowers_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-wide v4, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mCreated_at:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mSymbol:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_read:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mPrivacy_write:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStat:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatColor:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatAlert:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatSort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mStatShow:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mIsMine:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method
