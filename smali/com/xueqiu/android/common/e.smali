.class public Lcom/xueqiu/android/common/e;
.super Lcom/xueqiu/android/common/c;
.source "BaseFragmentSupportNotice.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/xueqiu/android/common/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 22
    const-string v0, "all"

    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/xueqiu/android/common/e$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/e$1;-><init>(Lcom/xueqiu/android/common/e;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/e;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_pull_down_ad_synced"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/common/e;->v()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/e;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public o()V
    .locals 15

    .prologue
    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 49
    sget-object v0, Lcom/xueqiu/android/common/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onResume fragment = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " pageId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v6

    iget-object v3, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 1713
    iget-object v7, v6, Lcom/xueqiu/android/base/a;->b:Lcom/google/gson/JsonObject;

    .line 1715
    if-nez v7, :cond_2

    .line 51
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 53
    sget-object v0, Lcom/xueqiu/android/common/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show general notice mPageId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/common/GeneralNoticeActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v3, "extra_notice_id"

    .line 56
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    .line 3781
    invoke-static {}, Lcom/xueqiu/android/base/a;->g()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 3783
    if-nez v0, :cond_7

    move-wide v0, v4

    .line 55
    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v2, v0, v1}, Lcom/xueqiu/android/common/e;->a(Landroid/content/Intent;II)V

    .line 60
    :cond_1
    return-void

    .line 1722
    :cond_2
    const-string v0, "image"

    .line 2106
    invoke-static {v7, v0, v14}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1728
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->j()Lcom/d/a/b/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v8

    .line 1729
    invoke-interface {v8, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 1731
    const-string v0, "cut_off_at"

    invoke-static {v7, v0}, Lcom/xueqiu/android/base/util/r;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v0, v10, v4

    if-lez v0, :cond_8

    move v0, v1

    .line 1735
    :goto_2
    const-string v9, "page"

    .line 3106
    invoke-static {v7, v9, v14}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1737
    if-nez v3, :cond_5

    .line 1738
    if-nez v7, :cond_6

    :cond_3
    move v3, v1

    .line 1747
    :goto_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    move v2, v1

    .line 1748
    :cond_4
    if-eqz v2, :cond_0

    .line 1749
    iput-object v14, v6, Lcom/xueqiu/android/base/a;->b:Lcom/google/gson/JsonObject;

    goto/16 :goto_0

    .line 1742
    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "all"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_6
    move v3, v2

    goto :goto_3

    .line 3787
    :cond_7
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/r;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method public q()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/common/e;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/e;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method
