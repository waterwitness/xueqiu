.class final Lcom/xueqiu/android/community/b$4$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CommentReceiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/b$4;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/xueqiu/android/community/b$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/b$4;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/xueqiu/android/community/b$4$1;->a:Lcom/xueqiu/android/community/b$4;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/community/b$4$1;->a:Lcom/xueqiu/android/community/b$4;

    iget-object v0, v0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/b;->z()V

    .line 218
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 214
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1223
    iget-object v0, p0, Lcom/xueqiu/android/community/b$4$1;->a:Lcom/xueqiu/android/community/b$4;

    iget-object v0, v0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/b;->z()V

    .line 1224
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/xueqiu/android/community/b$4$1;->a:Lcom/xueqiu/android/community/b$4;

    iget-object v0, v0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-static {v0}, Lcom/xueqiu/android/community/b;->a(Lcom/xueqiu/android/community/b;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/b$4$1;->a:Lcom/xueqiu/android/community/b$4;

    iget-object v1, v1, Lcom/xueqiu/android/community/b$4;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1226
    iget-object v0, p0, Lcom/xueqiu/android/community/b$4$1;->a:Lcom/xueqiu/android/community/b$4;

    iget-object v0, v0, Lcom/xueqiu/android/community/b$4;->b:Lcom/xueqiu/android/community/b;

    invoke-static {v0}, Lcom/xueqiu/android/community/b;->a(Lcom/xueqiu/android/community/b;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->notifyDataSetChanged()V

    .line 1227
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    :goto_0
    return-void

    .line 1229
    :cond_0
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
