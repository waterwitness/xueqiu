.class final Lcom/xueqiu/android/common/account/f$1$2;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/f$1;->onFail(ILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/account/f$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/f$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/xueqiu/android/common/account/f$1$2;->b:Lcom/xueqiu/android/common/account/f$1;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/f$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1$2;->b:Lcom/xueqiu/android/common/account/f$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    .line 1500
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1$2;->a:Ljava/lang/String;

    .line 2476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Lcom/tencent/tauth/http/TDebug;->msg(Ljava/lang/String;Landroid/content/Context;)V

    .line 286
    return-void
.end method
