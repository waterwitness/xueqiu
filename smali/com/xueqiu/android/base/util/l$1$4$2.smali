.class final Lcom/xueqiu/android/base/util/l$1$4$2;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$1$4;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/a/n;

.field final synthetic b:Lcom/xueqiu/android/base/util/l$1$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1$4;Lcom/xueqiu/android/stock/a/n;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$4$2;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/l$1$4$2;->a:Lcom/xueqiu/android/stock/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$4$2;->a:Lcom/xueqiu/android/stock/a/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/n;->a()Ljava/util/List;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$1$4$2;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$1$4$2;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget v2, v2, Lcom/xueqiu/android/base/util/l$1;->c:I

    iget-object v3, p0, Lcom/xueqiu/android/base/util/l$1$4$2;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v3, v3, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v3, v3, Lcom/xueqiu/android/base/util/l$1;->d:Ljava/lang/String;

    .line 2164
    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 2165
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 2167
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2169
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v5, Lcom/xueqiu/android/base/util/l$2;

    invoke-direct {v5, v1, v2}, Lcom/xueqiu/android/base/util/l$2;-><init>(Lcom/xueqiu/android/common/b;I)V

    .line 2354
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/xueqiu/android/base/b/ak;->a(ILjava/lang/String;Ljava/util/Set;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2189
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/b;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 153
    return-void
.end method
