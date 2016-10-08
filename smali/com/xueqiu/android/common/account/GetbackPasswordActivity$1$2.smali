.class final Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;
.super Lcom/xueqiu/android/base/b/p;
.source "GetbackPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/base/b/p;

.field final synthetic d:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->d:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iput-object p3, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->a:Lcom/xueqiu/android/base/b/ai;

    iput-object p4, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->c:Lcom/xueqiu/android/base/b/p;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->d:Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1;->a:Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;->i()V

    .line 92
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 88
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1097
    iget-object v0, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->a:Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/account/GetbackPasswordActivity$1$2;->c:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->f(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 88
    return-void
.end method
