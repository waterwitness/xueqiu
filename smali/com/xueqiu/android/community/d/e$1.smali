.class final Lcom/xueqiu/android/community/d/e$1;
.super Lrx/i;
.source "UserProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$1;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 71
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1084
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$1;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 1085
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$1;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xueqiu/android/community/b/o;->a(Lcom/xueqiu/android/community/model/User;Z)V

    .line 1087
    iget-object v7, p0, Lcom/xueqiu/android/community/d/e$1;->a:Lcom/xueqiu/android/community/d/e;

    .line 1119
    iget-object v0, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 1160
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    iget-object v1, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 1161
    iget-object v1, v7, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    iget-object v2, v7, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->l(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1162
    iget-object v1, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    .line 1170
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    iget-object v2, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 1171
    iget-object v2, v7, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    iget-object v3, v7, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    .line 1308
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v2, v4, v5, v1}, Lcom/xueqiu/android/base/b/aj;->h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1172
    iget-object v2, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v8

    .line 2180
    new-instance v6, Lcom/xueqiu/android/base/b/t;

    iget-object v1, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v6, v1}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 2181
    iget-object v1, v7, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    iget-object v2, v7, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2182
    iget-object v1, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v2

    .line 1120
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Lcom/xueqiu/android/community/d/e;->a(I)Lrx/a;

    move-result-object v3

    .line 2213
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    iget-object v4, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v4}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 2214
    iget-object v4, v7, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    iget-object v5, v7, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11, v1}, Lcom/xueqiu/android/base/b/ai;->j(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2215
    iget-object v4, v7, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v4

    .line 1120
    new-instance v5, Lcom/xueqiu/android/community/d/e$5;

    invoke-direct {v5, v7}, Lcom/xueqiu/android/community/d/e$5;-><init>(Lcom/xueqiu/android/community/d/e;)V

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Lrx/a;->a(Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/a;Lrx/c/j;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d/e$3;

    invoke-direct {v1, v7}, Lcom/xueqiu/android/community/d/e$3;-><init>(Lcom/xueqiu/android/community/d/e;)V

    new-instance v2, Lcom/xueqiu/android/community/d/e$4;

    invoke-direct {v2, v7}, Lcom/xueqiu/android/community/d/e$4;-><init>(Lcom/xueqiu/android/community/d/e;)V

    .line 1141
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 71
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 79
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method
