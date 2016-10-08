.class final Lcom/xueqiu/android/base/util/ap$3;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xueqiu/android/base/b/ai;

.field final synthetic c:J

.field final synthetic d:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 364
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$3;->b:Lcom/xueqiu/android/base/b/ai;

    iput-wide p3, p0, Lcom/xueqiu/android/base/util/ap$3;->c:J

    iput-object p5, p0, Lcom/xueqiu/android/base/util/ap$3;->d:Lcom/xueqiu/android/community/model/Comment;

    iput-object p6, p0, Lcom/xueqiu/android/base/util/ap$3;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xueqiu/android/base/util/ap$3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 364
    check-cast p1, Lrx/i;

    .line 1367
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const v3, 0x7f070294

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/base/util/ap$3;->a:Landroid/content/Context;

    const v7, 0x7f07009e

    .line 1368
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x270d

    move v5, v4

    .line 1367
    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 1370
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$3;->b:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ap$3;->c:J

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$3;->d:Lcom/xueqiu/android/community/model/Comment;

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/xueqiu/android/base/util/ap$3;->e:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/xueqiu/android/base/util/ap$3;->f:Z

    new-instance v8, Lcom/xueqiu/android/base/util/ap$3$1;

    invoke-direct {v8, p0, p1}, Lcom/xueqiu/android/base/util/ap$3$1;-><init>(Lcom/xueqiu/android/base/util/ap$3;Lrx/i;)V

    .line 2392
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/aj;->a(JJLjava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 364
    return-void

    .line 1370
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$3;->d:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    goto :goto_0
.end method
