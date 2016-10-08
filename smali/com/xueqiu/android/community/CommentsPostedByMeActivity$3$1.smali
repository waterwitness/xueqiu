.class final Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CommentsPostedByMeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;->a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;->a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->i()V

    .line 140
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 136
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1145
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;->a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->i()V

    .line 1146
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;->a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->a(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1147
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;->a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    iget-object v1, v1, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;->a:Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->a(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1148
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 1149
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    :goto_0
    return-void

    .line 1151
    :cond_0
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
