.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "RegisterCompleteUserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 599
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 600
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Z

    .line 601
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 596
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1605
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->c(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1606
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Z

    .line 596
    return-void
.end method
