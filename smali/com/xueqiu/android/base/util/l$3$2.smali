.class final Lcom/xueqiu/android/base/util/l$3$2;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$3;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/d;

.field final synthetic b:Lcom/xueqiu/android/base/util/l$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$3;Lcom/xueqiu/android/community/a/d;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$3$2;->b:Lcom/xueqiu/android/base/util/l$3;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/l$3$2;->a:Lcom/xueqiu/android/community/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$3$2;->a:Lcom/xueqiu/android/community/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/d;->a()Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$2;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$3$2;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-wide v2, v2, Lcom/xueqiu/android/base/util/l$3;->b:J

    .line 2286
    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 2287
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/FriendshipGroup;

    .line 2289
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2291
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v5, Lcom/xueqiu/android/base/util/l$8;

    invoke-direct {v5, v1}, Lcom/xueqiu/android/base/util/l$8;-><init>(Lcom/xueqiu/android/common/b;)V

    .line 3190
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/xueqiu/android/base/b/an;->a(JLjava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2308
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/b;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$3$2;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.USER_GROUP_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 273
    :cond_1
    return-void
.end method
