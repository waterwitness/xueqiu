.class public final Lcom/xueqiu/android/common/x;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public b:Landroid/media/SoundPool;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/common/x;-><init>(Landroid/content/Context;IB)V

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/common/x;-><init>(Landroid/content/Context;IC)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IC)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/xueqiu/android/common/x;->b:Landroid/media/SoundPool;

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/x;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/x;->c:I

    .line 36
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xueqiu/android/common/x;->a:Landroid/media/AudioManager;

    .line 37
    return-void
.end method
