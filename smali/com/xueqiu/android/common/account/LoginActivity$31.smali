.class final Lcom/xueqiu/android/common/account/LoginActivity$31;
.super Lcom/xueqiu/android/base/b/p;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/LoginActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$31;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 5

    .prologue
    .line 1168
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1169
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$31$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$31$1;-><init>(Lcom/xueqiu/android/common/account/LoginActivity$31;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 1175
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1165
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 2179
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$31;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2180
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$31;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->v(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    .line 3169
    iput-object v1, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 1165
    return-void
.end method
