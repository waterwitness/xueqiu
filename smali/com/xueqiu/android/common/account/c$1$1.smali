.class final Lcom/xueqiu/android/common/account/c$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "ThirdAuthHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/c$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:Lcom/xueqiu/android/common/account/c$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c$1;Lcom/xueqiu/android/base/b/ai;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/c$1$1;->a:Lcom/xueqiu/android/base/b/ai;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 89
    check-cast p1, Lorg/json/JSONObject;

    .line 1097
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "wc"

    .line 2059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 5059
    iput-wide v2, v0, Lcom/xueqiu/android/common/account/c;->f:J

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1;->a:Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v1, v1, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    .line 6059
    iget-object v1, v1, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 1102
    iget-object v2, p0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    .line 7059
    iget-object v2, v2, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    .line 1102
    new-instance v3, Lcom/xueqiu/android/common/account/c$1$1$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/account/c$1$1$1;-><init>(Lcom/xueqiu/android/common/account/c$1$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->g(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 89
    return-void
.end method
