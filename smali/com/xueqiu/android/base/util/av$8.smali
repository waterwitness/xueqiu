.class final Lcom/xueqiu/android/base/util/av$8;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$8;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 451
    check-cast p1, Ljava/lang/Integer;

    .line 1458
    if-eqz p1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$8;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1459
    const-string v1, "trade_write_token_expires"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 451
    :cond_0
    return-void
.end method
