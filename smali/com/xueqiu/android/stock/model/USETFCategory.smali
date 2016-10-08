.class public Lcom/xueqiu/android/stock/model/USETFCategory;
.super Ljava/lang/Object;
.source "USETFCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/USETFCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field title:Ljava/lang/String;

.field types:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/xueqiu/android/stock/model/USETFCategory$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/USETFCategory$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/USETFCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->title:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->types:[Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->types:[Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->title:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setTypes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->types:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/USETFCategory;->types:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 62
    return-void
.end method
