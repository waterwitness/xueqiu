.class public Lcom/xueqiu/android/community/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/xueqiu/android/common/model/IAlphabetSortable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/xueqiu/android/common/model/IAlphabetSortable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private allowAllActMsg:Z

.field private blockStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "block_status"
    .end annotation
.end field

.field private blocking:Z

.field private blogUrl:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private commonCount:I

.field private createdAt:Ljava/util/Date;

.field private cubeCount:I

.field private description:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private favouritesCount:I

.field private followMe:Z

.field private followersCount:I

.field private following:Z

.field private friendsCount:I

.field private gender:Lcom/xueqiu/android/community/model/User$Gender;

.field private geoEnabled:Z

.field private location:Ljava/lang/String;

.field private oAuthUserId:J

.field private pinyinRemark:Ljava/lang/String;

.field private pinyinScreenName:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private profileLargeImageUrl:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private recExtraMsg:Ljava/lang/String;

.field private recentStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private recommend:Ljava/lang/String;

.field private recommendReason:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private statusesCount:I

.field private step:Ljava/lang/String;

.field private stockStatusCount:I

.field private stocksCount:I

.field private telephone:Ljava/lang/String;

.field private topDisscusStocks:Ljava/lang/String;

.field private type:I

.field private userId:J

.field private verified:Z

.field private verifiedDescription:Ljava/lang/String;

.field private verifiedRealName:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verified_realname"
    .end annotation
.end field

.field private verifiedRealname:Z

.field private verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/xueqiu/android/community/model/User$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/User$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    .line 66
    sget-object v0, Lcom/xueqiu/android/community/model/UserVerifyType;->OTHERS:Lcom/xueqiu/android/community/model/UserVerifyType;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/User;->verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;

    .line 72
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->step:Ljava/lang/String;

    .line 74
    iput-boolean v3, p0, Lcom/xueqiu/android/community/model/User;->following:Z

    .line 75
    iput-boolean v3, p0, Lcom/xueqiu/android/community/model/User;->followMe:Z

    .line 79
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->recExtraMsg:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->topDisscusStocks:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->recentStatus:Ljava/util/ArrayList;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/User;->oAuthUserId:J

    .line 85
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->remark:Ljava/lang/String;

    .line 87
    iput-boolean v3, p0, Lcom/xueqiu/android/community/model/User;->blocking:Z

    .line 89
    iput v3, p0, Lcom/xueqiu/android/community/model/User;->blockStatus:I

    .line 92
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->pinyinRemark:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->pinyinScreenName:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->telephone:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v2, Lcom/xueqiu/android/community/model/User$Gender;->UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    .line 66
    sget-object v2, Lcom/xueqiu/android/community/model/UserVerifyType;->OTHERS:Lcom/xueqiu/android/community/model/UserVerifyType;

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;

    .line 72
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->step:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/xueqiu/android/community/model/User;->following:Z

    .line 75
    iput-boolean v1, p0, Lcom/xueqiu/android/community/model/User;->followMe:Z

    .line 79
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->recExtraMsg:Ljava/lang/String;

    .line 82
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->topDisscusStocks:Ljava/lang/String;

    .line 83
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->recentStatus:Ljava/util/ArrayList;

    .line 84
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xueqiu/android/community/model/User;->oAuthUserId:J

    .line 85
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->remark:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/xueqiu/android/community/model/User;->blocking:Z

    .line 89
    iput v1, p0, Lcom/xueqiu/android/community/model/User;->blockStatus:I

    .line 92
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->pinyinRemark:Ljava/lang/String;

    .line 93
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->pinyinScreenName:Ljava/lang/String;

    .line 94
    iput-object v4, p0, Lcom/xueqiu/android/community/model/User;->telephone:Ljava/lang/String;

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->type:I

    .line 105
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->screenName:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->description:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->domain:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/community/model/User$Gender;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    .line 109
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->province:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->city:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->location:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->blogUrl:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->profileImageUrl:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->profileLargeImageUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->followersCount:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->friendsCount:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->statusesCount:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->stocksCount:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->favouritesCount:I

    .line 120
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->createdAt:Ljava/util/Date;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xueqiu/android/community/model/User;->following:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/xueqiu/android/community/model/User;->verified:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealName:Z

    .line 124
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->verifiedDescription:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/xueqiu/android/community/model/User;->allowAllActMsg:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/xueqiu/android/community/model/User;->geoEnabled:Z

    .line 127
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->recommend:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->recommendReason:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/model/User;->commonCount:I

    .line 130
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->recExtraMsg:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/community/model/UserVerifyType;->fromValue(I)Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_5

    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lcom/xueqiu/android/community/model/User;->followMe:Z

    .line 134
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/community/model/User;->remark:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_6

    :goto_6
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealname:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/User;->blockStatus:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/User;->cubeCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_7
    return-void

    :cond_0
    move v2, v1

    .line 121
    goto :goto_0

    :cond_1
    move v2, v1

    .line 122
    goto :goto_1

    :cond_2
    move v2, v1

    .line 123
    goto :goto_2

    :cond_3
    move v2, v1

    .line 125
    goto :goto_3

    :cond_4
    move v2, v1

    .line 126
    goto :goto_4

    :cond_5
    move v2, v1

    .line 133
    goto :goto_5

    :cond_6
    move v0, v1

    .line 135
    goto :goto_6

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "UserTable"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/User$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/User;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xueqiu/android/community/model/User;)I
    .locals 5

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    const/4 v0, -0x1

    .line 749
    :goto_0
    return v0

    .line 737
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 738
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 741
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 742
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 744
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 745
    aget-char v3, v1, v0

    aget-char v4, v2, v0

    if-eq v3, v4, :cond_4

    .line 746
    aget-char v1, v1, v0

    aget-char v0, v2, v0

    sub-int v0, v1, v0

    goto :goto_0

    .line 744
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 749
    :cond_5
    array-length v0, v1

    array-length v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/User;->compareTo(Lcom/xueqiu/android/community/model/User;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 754
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/xueqiu/android/community/model/User;

    if-nez v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    check-cast p1, Lcom/xueqiu/android/community/model/User;

    iget-wide v4, p1, Lcom/xueqiu/android/community/model/User;->userId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlphabets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->pinyinScreenName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "a"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->pinyinScreenName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBlockStatus()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->blockStatus:I

    return v0
.end method

.method public getBlogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->blogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonCount()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->commonCount:I

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCubeCount()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->cubeCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->favouritesCount:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->friendsCount:I

    return v0
.end method

.method public getGender()Lcom/xueqiu/android/community/model/User$Gender;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->pinyinRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->pinyinScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileImageUrl:Ljava/lang/String;

    const-string v1, "community/default/avatar.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProfileImageWidth_100()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "50x50"

    const-string v2, "100x100"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileLargeImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileLargeImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileLargeImageUrl:Ljava/lang/String;

    const-string v1, "community/default/avatar.png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileLargeImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRecExtraMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recExtraMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentStatus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recentStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecommend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recommendReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->statusesCount:I

    return v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->step:Ljava/lang/String;

    return-object v0
.end method

.method public getStockStatusCount()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->stockStatusCount:I

    return v0
.end method

.method public getStocksCount()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->stocksCount:I

    return v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getTopDisscusStocks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->topDisscusStocks:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->type:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    return-wide v0
.end method

.method public getVerifiedDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;

    return-object v0
.end method

.method public getoAuthUserId()J
    .locals 2

    .prologue
    .line 658
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/User;->oAuthUserId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 762
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    iget-wide v2, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public isAllowAllActMsg()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->allowAllActMsg:Z

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->blocking:Z

    return v0
.end method

.method public isFemale()Z
    .locals 2

    .prologue
    .line 766
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    iget-object v1, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User$Gender;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFollowMe()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->followMe:Z

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->following:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->geoEnabled:Z

    return v0
.end method

.method public isMale()Z
    .locals 2

    .prologue
    .line 770
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    iget-object v1, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User$Gender;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verified:Z

    return v0
.end method

.method public isVerifiedRealName()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealName:Z

    return v0
.end method

.method public isVerifiedRealname()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealname:Z

    return v0
.end method

.method public setAllowAllActMsg(Z)V
    .locals 0

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->allowAllActMsg:Z

    .line 577
    return-void
.end method

.method public setBlockStatus(I)V
    .locals 0

    .prologue
    .line 696
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->blockStatus:I

    .line 697
    return-void
.end method

.method public setBlocking(Z)V
    .locals 0

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->blocking:Z

    .line 685
    return-void
.end method

.method public setBlogUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->blogUrl:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->city:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setCommonCount(I)V
    .locals 0

    .prologue
    .line 622
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->commonCount:I

    .line 623
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->createdAt:Ljava/util/Date;

    .line 443
    return-void
.end method

.method public setCubeCount(I)V
    .locals 0

    .prologue
    .line 729
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->cubeCount:I

    .line 730
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->description:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->domain:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setFavouritesCount(I)V
    .locals 0

    .prologue
    .line 562
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->favouritesCount:I

    .line 563
    return-void
.end method

.method public setFollowMe(Z)V
    .locals 0

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->followMe:Z

    .line 705
    return-void
.end method

.method public setFollowersCount(I)V
    .locals 0

    .prologue
    .line 506
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->followersCount:I

    .line 507
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->following:Z

    .line 457
    return-void
.end method

.method public setFriendsCount(I)V
    .locals 0

    .prologue
    .line 520
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->friendsCount:I

    .line 521
    return-void
.end method

.method public setGender(Lcom/xueqiu/android/community/model/User$Gender;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    .line 339
    return-void
.end method

.method public setGeoEnabled(Z)V
    .locals 0

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->geoEnabled:Z

    .line 591
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->location:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setPinyinRemark(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->pinyinRemark:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setPinyinScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->pinyinScreenName:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->profileImageUrl:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setProfileLargeImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->profileLargeImageUrl:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->province:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setRecExtraMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->recExtraMsg:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setRecentStatus(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->recentStatus:Ljava/util/ArrayList;

    .line 655
    return-void
.end method

.method public setRecommend(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->recommend:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setRecommendReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->recommendReason:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->remark:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->screenName:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setStatusesCount(I)V
    .locals 0

    .prologue
    .line 534
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->statusesCount:I

    .line 535
    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->step:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setStockStatusCount(I)V
    .locals 0

    .prologue
    .line 638
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->stockStatusCount:I

    .line 639
    return-void
.end method

.method public setStocksCount(I)V
    .locals 0

    .prologue
    .line 548
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->stocksCount:I

    .line 549
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->telephone:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setTopDisscusStocks(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->topDisscusStocks:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 720
    iput p1, p0, Lcom/xueqiu/android/community/model/User;->type:I

    .line 721
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    .line 259
    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->verified:Z

    .line 471
    return-void
.end method

.method public setVerifiedDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->verifiedDescription:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public setVerifiedRealName(Z)V
    .locals 0

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealName:Z

    .line 479
    return-void
.end method

.method public setVerifiedRealname(Z)V
    .locals 0

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealname:Z

    .line 779
    return-void
.end method

.method public setVerifyType(Lcom/xueqiu/android/community/model/UserVerifyType;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/xueqiu/android/community/model/User;->verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;

    .line 681
    return-void
.end method

.method public setoAuthUserId(J)V
    .locals 1

    .prologue
    .line 662
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/User;->oAuthUserId:J

    .line 663
    return-void
.end method

.method public showName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 146
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/User;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->screenName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->description:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->domain:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->gender:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User$Gender;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->province:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->city:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->location:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->blogUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileImageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->profileLargeImageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->followersCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->friendsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->statusesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->stocksCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->favouritesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->following:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verified:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealName:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 168
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->allowAllActMsg:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->geoEnabled:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recommend:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recommendReason:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->commonCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->recExtraMsg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->verifyType:Lcom/xueqiu/android/community/model/UserVerifyType;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserVerifyType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->followMe:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->remark:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/User;->verifiedRealname:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->blockStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/xueqiu/android/community/model/User;->cubeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/User;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 164
    goto :goto_1

    :cond_2
    move v0, v3

    .line 165
    goto :goto_2

    :cond_3
    move v0, v3

    .line 166
    goto :goto_3

    :cond_4
    move v0, v3

    .line 168
    goto :goto_4

    :cond_5
    move v0, v3

    .line 169
    goto :goto_5

    :cond_6
    move v0, v3

    .line 175
    goto :goto_6

    :cond_7
    move v2, v3

    .line 177
    goto :goto_7
.end method
