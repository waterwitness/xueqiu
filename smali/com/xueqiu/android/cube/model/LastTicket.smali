.class public Lcom/xueqiu/android/cube/model/LastTicket;
.super Ljava/lang/Object;
.source "LastTicket.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/LastTicket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private finished:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private paid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private submitted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/xueqiu/android/cube/model/LastTicket$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/LastTicket$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/LastTicket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->closed:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->paid:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->submitted:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->finished:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->status:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getClosed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->closed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFinished()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->finished:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPaid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->paid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubmitted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->submitted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setClosed(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->closed:Ljava/lang/Boolean;

    .line 66
    return-void
.end method

.method public setFinished(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->finished:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public setPaid(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->paid:Ljava/lang/Boolean;

    .line 74
    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->status:Ljava/lang/Integer;

    .line 98
    return-void
.end method

.method public setSubmitted(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/LastTicket;->submitted:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->paid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->submitted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->finished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/LastTicket;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    :cond_1
    move v0, v2

    .line 36
    goto :goto_1

    :cond_2
    move v0, v2

    .line 37
    goto :goto_2

    :cond_3
    move v1, v2

    .line 38
    goto :goto_3
.end method
