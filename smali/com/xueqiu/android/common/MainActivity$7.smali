.class final Lcom/xueqiu/android/common/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/MainActivity;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$7;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 411
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 1442
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->c:Z

    .line 411
    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$7;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cached_since_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 415
    invoke-static {}, Lcom/xueqiu/android/common/MainActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/MainActivity$7$1;

    iget-object v4, p0, Lcom/xueqiu/android/common/MainActivity$7;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v3, p0, v4}, Lcom/xueqiu/android/common/MainActivity$7$1;-><init>(Lcom/xueqiu/android/common/MainActivity$7;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->m(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method
