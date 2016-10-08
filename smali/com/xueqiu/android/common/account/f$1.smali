.class final Lcom/xueqiu/android/common/account/f$1;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"

# interfaces
.implements Lcom/tencent/tauth/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/f;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/f;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    new-instance v1, Lcom/xueqiu/android/common/account/f$1$2;

    invoke-direct {v1, p0, p2}, Lcom/xueqiu/android/common/account/f$1$2;-><init>(Lcom/xueqiu/android/common/account/f$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/c;->a(Lcom/xueqiu/android/common/account/c;Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    new-instance v1, Lcom/xueqiu/android/common/account/f$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/common/account/f$1$1;-><init>(Lcom/xueqiu/android/common/account/f$1;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/c;->a(Lcom/xueqiu/android/common/account/c;Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method
