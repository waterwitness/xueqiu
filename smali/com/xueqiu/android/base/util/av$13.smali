.class final Lcom/xueqiu/android/base/util/av$13;
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
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;I)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$13;->b:Lcom/xueqiu/android/base/util/av;

    iput p2, p0, Lcom/xueqiu/android/base/util/av$13;->a:I

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 535
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 536
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 532
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1540
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    const-string v0, "time_zone"

    iget v1, p0, Lcom/xueqiu/android/base/util/av$13;->a:I

    iget-object v2, p0, Lcom/xueqiu/android/base/util/av$13;->b:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v2, v2, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1541
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putInt(Ljava/lang/String;ILandroid/content/Context;)V

    .line 532
    :cond_0
    return-void
.end method
