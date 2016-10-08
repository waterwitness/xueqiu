.class final Lcom/xueqiu/android/common/UserGuideActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "UserGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/UserGuideActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/UserGuideActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xueqiu/android/common/UserGuideActivity$3;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity$3;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/UserGuideActivity;->f(Lcom/xueqiu/android/common/UserGuideActivity;)Lcom/xueqiu/android/common/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/y;->a(ZLcom/android/volley/y;)V

    .line 118
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 114
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1122
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {}, Lcom/xueqiu/android/common/UserGuideActivity;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResponse success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity$3;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/UserGuideActivity;->f(Lcom/xueqiu/android/common/UserGuideActivity;)Lcom/xueqiu/android/common/y;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/y;->a(ZLcom/android/volley/y;)V

    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/common/UserGuideActivity;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResponse error"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
