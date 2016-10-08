.class final Lcom/xueqiu/android/base/util/ap$4$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/ap$4;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/util/ap$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ap$4;Lrx/i;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$4$1;->b:Lcom/xueqiu/android/base/util/ap$4;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$4$1;->a:Lrx/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 430
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 425
    check-cast p1, Lcom/xueqiu/android/community/model/Comment;

    .line 1434
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1435
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 1436
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->b:Lcom/xueqiu/android/base/util/ap$4;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$4;->j:Landroid/content/Context;

    const/16 v1, 0x270d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 1437
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->b:Lcom/xueqiu/android/base/util/ap$4;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$4;->j:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$4$1;->b:Lcom/xueqiu/android/base/util/ap$4;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/ap$4;->j:Landroid/content/Context;

    const v3, 0x7f070293

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xueqiu/android/base/util/ap$4$1;->b:Lcom/xueqiu/android/base/util/ap$4;

    iget-object v7, v7, Lcom/xueqiu/android/base/util/ap$4;->j:Landroid/content/Context;

    const v8, 0x7f07009e

    .line 1438
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 1437
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x270e

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 1439
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4$1;->b:Lcom/xueqiu/android/base/util/ap$4;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$4;->j:Landroid/content/Context;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;J)V

    .line 1441
    if-eqz p1, :cond_0

    .line 1442
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.commentSuccess"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1443
    const-string v1, "extra_comment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1444
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 425
    :cond_0
    return-void
.end method
