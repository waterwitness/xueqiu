.class final Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;
.super Lcom/xueqiu/android/base/b/p;
.source "LoginByEmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginByEmailActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->i()V

    .line 115
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 116
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 111
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1120
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->i()V

    .line 1121
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$4;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->a(Lcom/xueqiu/android/common/account/LoginByEmailActivity;Lcom/xueqiu/android/common/model/LoginResult;)V

    .line 111
    return-void
.end method
