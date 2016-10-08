.class public final Lcom/xueqiu/android/base/b/m$2;
.super Ljava/lang/Object;
.source "QQAuthorize.java"

# interfaces
.implements Lcom/tencent/tauth/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/b/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/http/Callback;

.field final synthetic b:Lcom/xueqiu/android/base/b/m;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/m;Lcom/tencent/tauth/http/Callback;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/xueqiu/android/base/b/m$2;->b:Lcom/xueqiu/android/base/b/m;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/m$2;->a:Lcom/tencent/tauth/http/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$2;->b:Lcom/xueqiu/android/base/b/m;

    check-cast p1, Lcom/tencent/tauth/bean/OpenId;

    invoke-virtual {p1}, Lcom/tencent/tauth/bean/OpenId;->getOpenId()Ljava/lang/String;

    move-result-object v1

    .line 1030
    iput-object v1, v0, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m$2;->b:Lcom/xueqiu/android/base/b/m;

    .line 2030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    .line 167
    const-string v1, "100229413"

    iget-object v2, p0, Lcom/xueqiu/android/base/b/m$2;->b:Lcom/xueqiu/android/base/b/m;

    .line 3030
    iget-object v2, v2, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/xueqiu/android/base/b/m$2;->a:Lcom/tencent/tauth/http/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tauth/TencentOpenAPI;->userInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V

    .line 168
    return-void
.end method
