.class final Lcom/xueqiu/android/base/util/ap$3$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/ap$3;
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

.field final synthetic b:Lcom/xueqiu/android/base/util/ap$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ap$3;Lrx/i;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$3$1;->a:Lrx/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 10

    .prologue
    const/16 v3, 0x270f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const/16 v1, 0x270d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 376
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 377
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const v6, 0x7f07028f

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v8, v8, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const v9, 0x7f07009e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v1, v0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-wide v2, v0, Lcom/xueqiu/android/base/util/ap$3;->c:J

    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v4, v0, Lcom/xueqiu/android/base/util/ap$3;->d:Lcom/xueqiu/android/community/model/Comment;

    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v5, v0, Lcom/xueqiu/android/base/util/ap$3;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-boolean v6, v0, Lcom/xueqiu/android/base/util/ap$3;->f:Z

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)V

    .line 381
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 370
    check-cast p1, Lcom/xueqiu/android/community/model/Comment;

    .line 1385
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1386
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 1387
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const/16 v1, 0x270d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 1388
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const v3, 0x7f070293

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v7, v7, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const v8, 0x7f07009e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x270e

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 1389
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3$1;->b:Lcom/xueqiu/android/base/util/ap$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;J)V

    .line 1391
    if-eqz p1, :cond_0

    .line 1392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.commentSuccess"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    const-string v1, "extra_comment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1394
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 370
    :cond_0
    return-void
.end method
