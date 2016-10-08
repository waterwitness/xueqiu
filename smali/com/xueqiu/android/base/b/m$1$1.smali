.class final Lcom/xueqiu/android/base/b/m$1$1;
.super Ljava/lang/Object;
.source "QQAuthorize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/m$1;->onSuccess(Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/xueqiu/android/base/b/m$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/m$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/xueqiu/android/base/b/m$1$1;->b:Lcom/xueqiu/android/base/b/m$1;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/m$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$1$1;->b:Lcom/xueqiu/android/base/b/m$1;

    iget-object v1, v0, Lcom/xueqiu/android/base/b/m$1;->b:Lcom/xueqiu/android/base/b/m;

    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$1$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tauth/bean/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/tauth/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 1030
    iput-object v0, v1, Lcom/xueqiu/android/base/b/m;->f:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$1$1;->b:Lcom/xueqiu/android/base/b/m$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/m$1;->a:Lcom/xueqiu/android/base/b/i;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$1$1;->b:Lcom/xueqiu/android/base/b/m$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/m$1;->a:Lcom/xueqiu/android/base/b/i;

    invoke-interface {v0}, Lcom/xueqiu/android/base/b/i;->a()V

    .line 152
    :cond_0
    return-void
.end method
