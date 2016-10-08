.class final Lcom/xueqiu/android/base/util/ap$13$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/ap$13;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/util/ap$13;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ap$13;Lrx/i;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$13$1;->a:Lrx/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 10

    .prologue
    const/16 v3, 0x270f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const/16 v1, 0x270d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 207
    invoke-static {p1, v4}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-boolean v0, v0, Lcom/xueqiu/android/base/util/ap$13;->h:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const v6, 0x7f07028f

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v8, v8, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const v9, 0x7f070124

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/ap$13;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v4, v4, Lcom/xueqiu/android/base/util/ap$13;->j:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 201
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 1218
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1219
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 1220
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const/16 v1, 0x270d

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 1221
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const v3, 0x7f070293

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v7, v7, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const v8, 0x7f070124

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x270e

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 1222
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13$1;->b:Lcom/xueqiu/android/base/util/ap$13;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;J)V

    .line 201
    return-void
.end method
