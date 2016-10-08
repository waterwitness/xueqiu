.class final Lcom/xueqiu/android/community/AccountBindingActivity$12;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$12;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$12;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->k(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/m;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$12$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$12$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$12;)V

    .line 1141
    new-instance v2, Lcom/xueqiu/android/base/b/m$1;

    invoke-direct {v2, v0, v1}, Lcom/xueqiu/android/base/b/m$1;-><init>(Lcom/xueqiu/android/base/b/m;Lcom/xueqiu/android/base/b/i;)V

    .line 1162
    iget-object v1, v0, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1163
    iget-object v1, v0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/base/b/m$2;

    invoke-direct {v3, v0, v2}, Lcom/xueqiu/android/base/b/m$2;-><init>(Lcom/xueqiu/android/base/b/m;Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v1, v3}, Lcom/tencent/tauth/TencentOpenAPI;->openid(Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V

    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    const-string v3, "100229413"

    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2}, Lcom/tencent/tauth/TencentOpenAPI;->userInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V

    goto :goto_0
.end method
