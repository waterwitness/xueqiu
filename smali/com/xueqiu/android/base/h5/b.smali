.class public final Lcom/xueqiu/android/base/h5/b;
.super Ljava/lang/Object;
.source "H5Event.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/base/h5/b;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/base/h5/b;->e:I

    .line 95
    new-instance v0, Lcom/xueqiu/android/base/h5/b$1;

    invoke-direct {v0}, Lcom/xueqiu/android/base/h5/b$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/h5/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/base/h5/b;->c:I

    .line 29
    invoke-static {}, Lcom/xueqiu/android/base/h5/b;->a()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 30
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/base/h5/b;->c:I

    .line 33
    iput p1, p0, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/h5/b;-><init>(I)V

    return-void
.end method

.method private static declared-synchronized a()I
    .locals 3

    .prologue
    .line 39
    const-class v1, Lcom/xueqiu/android/base/h5/b;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/xueqiu/android/base/h5/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xueqiu/android/base/h5/b;->e:I

    const/16 v2, 0x2710

    if-ne v0, v2, :cond_0

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/base/h5/b;->e:I

    .line 42
    :cond_0
    sget v0, Lcom/xueqiu/android/base/h5/b;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/b;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/xueqiu/android/base/h5/b;->c:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string v1, "H5Event[%d:%s:%s]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/xueqiu/android/base/h5/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/b;->d:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/xueqiu/android/base/h5/b;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/xueqiu/android/base/h5/b;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
