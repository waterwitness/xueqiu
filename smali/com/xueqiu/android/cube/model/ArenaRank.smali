.class public Lcom/xueqiu/android/cube/model/ArenaRank;
.super Ljava/lang/Object;
.source "ArenaRank.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/ArenaRank;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bigBgIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bigIconGray:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bigIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private configUpdatedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private listName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private listParam:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private memberCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rank:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private scoreUpdatedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private smallBgIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private smallIconGray:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private smallIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/xueqiu/android/cube/model/ArenaRank$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/ArenaRank$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/ArenaRank;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->subTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listParam:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/xueqiu/android/cube/model/ArenaRank;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->rank:I

    return p1
.end method

.method static synthetic access$1302(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconGray:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconGray:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->scoreUpdatedAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/ArenaRank;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->memberCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->configUpdatedAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigBgIcon:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallBgIcon:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBigBgIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigBgIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getBigIconGray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconGray:Ljava/lang/String;

    return-object v0
.end method

.method public getBigIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->configUpdatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listName:Ljava/lang/String;

    return-object v0
.end method

.method public getListParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listParam:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->memberCount:I

    return v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->rank:I

    return v0
.end method

.method public getScoreUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->scoreUpdatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getSmallBgIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallBgIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconGray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconGray:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bgColor:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setBigBgIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigBgIcon:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setBigIconGray(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconGray:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setBigIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconUrl:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setConfigUpdatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->configUpdatedAt:Ljava/util/Date;

    .line 150
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->description:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setListName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setListParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listParam:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setMemberCount(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->memberCount:I

    .line 142
    return-void
.end method

.method public setRank(I)V
    .locals 0

    .prologue
    .line 213
    iput p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->rank:I

    .line 214
    return-void
.end method

.method public setScoreUpdatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->scoreUpdatedAt:Ljava/util/Date;

    .line 134
    return-void
.end method

.method public setSmallBgIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallBgIcon:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSmallIconGray(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconGray:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setSmallIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconUrl:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->subTitle:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->listParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->scoreUpdatedAt:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->scoreUpdatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->memberCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->configUpdatedAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->configUpdatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bgColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigBgIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallBgIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconGray:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconGray:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void

    :cond_1
    move-wide v0, v2

    .line 68
    goto :goto_0
.end method
