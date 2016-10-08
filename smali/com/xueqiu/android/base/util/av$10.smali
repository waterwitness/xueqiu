.class final Lcom/xueqiu/android/base/util/av$10;
.super Lcom/xueqiu/android/base/b/p;
.source "SyncLaunchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/av;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$10;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 485
    check-cast p1, Ljava/lang/String;

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/util/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1493
    iget-object v1, p0, Lcom/xueqiu/android/base/util/av$10;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v1, v1, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1493
    const-string v2, "trade_key"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method
