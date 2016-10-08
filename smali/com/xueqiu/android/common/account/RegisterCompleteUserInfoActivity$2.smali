.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 572
    const-string v0, "error"

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i()V

    .line 574
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 569
    check-cast p1, Lorg/json/JSONObject;

    .line 1578
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1579
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    const-string v1, "headimgurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->b(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1580
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    .line 569
    return-void
.end method
