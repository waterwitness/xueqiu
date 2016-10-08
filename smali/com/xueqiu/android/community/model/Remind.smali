.class public Lcom/xueqiu/android/community/model/Remind;
.super Ljava/lang/Object;
.source "Remind.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/Remind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comments:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private followers:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mentions:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private notices:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private paidMentions:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pmComments:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private strategy:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcnotify"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/xueqiu/android/community/model/Remind$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Remind$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/Remind;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 133
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    .line 134
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 135
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 136
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 137
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    .line 138
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    .line 139
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    .line 140
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    .line 141
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 145
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    .line 146
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 147
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 148
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 149
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    .line 150
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    .line 151
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    .line 152
    const-class v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RemindItem;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/Remind$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/Remind;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getComments()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getFollowers()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getMentions()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getNotices()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getPmComments()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getStatus()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getStrategy()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public getTradeNotification()Lcom/xueqiu/android/community/model/RemindItem;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    return-object v0
.end method

.method public isLegal()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 178
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    .line 179
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 180
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 181
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 182
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    .line 183
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    .line 184
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    .line 185
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    .line 186
    return-void
.end method

.method public setComments(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 59
    return-void
.end method

.method public setFollowers(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    .line 67
    return-void
.end method

.method public setMentions(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 75
    return-void
.end method

.method public setNotices(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    .line 83
    return-void
.end method

.method public setPaidMentions(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    .line 107
    return-void
.end method

.method public setPmComments(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    .line 115
    return-void
.end method

.method public setStatus(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    .line 99
    return-void
.end method

.method public setStrategy(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    .line 91
    return-void
.end method

.method public setTradeNotification(Lcom/xueqiu/android/community/model/RemindItem;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->comments:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->followers:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->mentions:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->paidMentions:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->pmComments:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->status:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->strategy:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->notices:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Remind;->tradeNotification:Lcom/xueqiu/android/community/model/RemindItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    return-void
.end method
