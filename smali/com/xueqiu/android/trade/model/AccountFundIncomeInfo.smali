.class public Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;
.super Ljava/lang/Object;
.source "AccountFundIncomeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private assetBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dayIncomeBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dayIncomeRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private unrealizedPnl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private unrealizedPnlRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->assetBalance:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeBalance:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeRate:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnl:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnlRate:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAssetBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->assetBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getDayIncomeBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getDayIncomeRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getUnrealizedPnl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnl:Ljava/lang/String;

    return-object v0
.end method

.method public getUnrealizedPnlRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnlRate:Ljava/lang/String;

    return-object v0
.end method

.method public setAssetBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->assetBalance:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setDayIncomeBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeBalance:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDayIncomeRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeRate:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUnrealizedPnl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUnrealizedPnlRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnlRate:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->assetBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->dayIncomeRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->unrealizedPnlRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
