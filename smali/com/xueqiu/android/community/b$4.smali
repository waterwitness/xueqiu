.class final Lcom/xueqiu/android/community/b$4;
.super Ljava/lang/Object;
.source "CommentReceiveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/b;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    iput-object p2, p0, Lcom/xueqiu/android/community/b$4;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/b;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/b$4;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/b$4$1;

    iget-object v4, p0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-direct {v1, p0, v4}, Lcom/xueqiu/android/community/b$4$1;-><init>(Lcom/xueqiu/android/community/b$4;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/b;->y()Landroid/app/Dialog;

    .line 234
    return-void
.end method
