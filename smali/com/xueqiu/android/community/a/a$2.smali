.class final Lcom/xueqiu/android/community/a/a$2;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xueqiu/android/community/a/a$2;->b:Lcom/xueqiu/android/community/a/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/a$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 204
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$2;->b:Lcom/xueqiu/android/community/a/a;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 204
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$2;->b:Lcom/xueqiu/android/community/a/a;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 205
    check-cast v0, Landroid/app/Activity;

    .line 3152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$2;->b:Lcom/xueqiu/android/community/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/a$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/a;->a(Lcom/xueqiu/android/community/a/a;Lcom/xueqiu/android/community/model/Comment;)V

    .line 210
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x6a4

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
