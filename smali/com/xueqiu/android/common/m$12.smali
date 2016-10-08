.class final Lcom/xueqiu/android/common/m$12;
.super Lcom/xueqiu/android/base/b/p;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/m;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/xueqiu/android/common/m$12;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 327
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 328
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 324
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1332
    iget-object v0, p0, Lcom/xueqiu/android/common/m$12;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/m;->b(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/community/model/User;)V

    .line 324
    return-void
.end method
