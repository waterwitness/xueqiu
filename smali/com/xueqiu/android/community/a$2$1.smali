.class final Lcom/xueqiu/android/community/a$2$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CommentListItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/xueqiu/android/community/a$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a$2;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xueqiu/android/community/a$2$1;->a:Lcom/xueqiu/android/community/a$2;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/community/a$2$1;->a:Lcom/xueqiu/android/community/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/a$2;->b:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 269
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 265
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1274
    iget-object v0, p0, Lcom/xueqiu/android/community/a$2$1;->a:Lcom/xueqiu/android/community/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/a$2;->b:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1275
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/xueqiu/android/community/a$2$1;->a:Lcom/xueqiu/android/community/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/a$2;->b:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->b(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a$2$1;->a:Lcom/xueqiu/android/community/a$2;

    iget-object v1, v1, Lcom/xueqiu/android/community/a$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1277
    iget-object v0, p0, Lcom/xueqiu/android/community/a$2$1;->a:Lcom/xueqiu/android/community/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/a$2;->b:Lcom/xueqiu/android/community/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a;->b(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 1278
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    :goto_0
    return-void

    .line 1280
    :cond_0
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
