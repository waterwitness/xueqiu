.class final Lcom/xueqiu/android/base/util/ap$4;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;ZZLjava/lang/String;Z)Lrx/a;
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
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;ZZZLjava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$4;->a:Lcom/xueqiu/android/base/b/ai;

    iput-wide p2, p0, Lcom/xueqiu/android/base/util/ap$4;->b:J

    iput-object p4, p0, Lcom/xueqiu/android/base/util/ap$4;->c:Lcom/xueqiu/android/community/model/Comment;

    iput-object p5, p0, Lcom/xueqiu/android/base/util/ap$4;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/xueqiu/android/base/util/ap$4;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/util/ap$4;->f:Z

    iput-boolean p7, p0, Lcom/xueqiu/android/base/util/ap$4;->g:Z

    iput-boolean p8, p0, Lcom/xueqiu/android/base/util/ap$4;->h:Z

    iput-object p9, p0, Lcom/xueqiu/android/base/util/ap$4;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/xueqiu/android/base/util/ap$4;->j:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 421
    check-cast p1, Lrx/i;

    .line 1424
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$4;->a:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ap$4;->b:J

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$4;->c:Lcom/xueqiu/android/community/model/Comment;

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/xueqiu/android/base/util/ap$4;->d:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/xueqiu/android/base/util/ap$4;->e:Z

    iget-boolean v8, p0, Lcom/xueqiu/android/base/util/ap$4;->f:Z

    iget-boolean v9, p0, Lcom/xueqiu/android/base/util/ap$4;->g:Z

    iget-boolean v10, p0, Lcom/xueqiu/android/base/util/ap$4;->h:Z

    iget-object v11, p0, Lcom/xueqiu/android/base/util/ap$4;->i:Ljava/lang/String;

    new-instance v12, Lcom/xueqiu/android/base/util/ap$4$1;

    invoke-direct {v12, p0, p1}, Lcom/xueqiu/android/base/util/ap$4$1;-><init>(Lcom/xueqiu/android/base/util/ap$4;Lrx/i;)V

    .line 2410
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual/range {v1 .. v12}, Lcom/xueqiu/android/base/b/aj;->a(JJLjava/lang/String;ZZZZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 421
    return-void

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$4;->c:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    goto :goto_0
.end method
