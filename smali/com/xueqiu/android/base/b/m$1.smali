.class public final Lcom/xueqiu/android/base/b/m$1;
.super Ljava/lang/Object;
.source "QQAuthorize.java"

# interfaces
.implements Lcom/tencent/tauth/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/b/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/i;

.field final synthetic b:Lcom/xueqiu/android/base/b/m;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/m;Lcom/xueqiu/android/base/b/i;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/xueqiu/android/base/b/m$1;->b:Lcom/xueqiu/android/base/b/m;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/m$1;->a:Lcom/xueqiu/android/base/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$1;->b:Lcom/xueqiu/android/base/b/m;

    .line 1030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 144
    new-instance v1, Lcom/xueqiu/android/base/b/m$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/b/m$1$1;-><init>(Lcom/xueqiu/android/base/b/m$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
