.class final Lcom/xueqiu/android/community/a$2;
.super Ljava/lang/Object;
.source "CommentListItemClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/xueqiu/android/community/a$2;->b:Lcom/xueqiu/android/community/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/a$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 264
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/community/a$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/a$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a$2$1;-><init>(Lcom/xueqiu/android/community/a$2;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/community/a$2;->b:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 285
    return-void
.end method
