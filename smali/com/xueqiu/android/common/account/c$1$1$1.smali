.class final Lcom/xueqiu/android/common/account/c$1$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "ThirdAuthHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/c$1$1;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/c$1$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c$1$1;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c$1$1$1;->a:Lcom/xueqiu/android/common/account/c$1$1;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 105
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 102
    check-cast p1, Lorg/json/JSONObject;

    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1$1;->a:Lcom/xueqiu/android/common/account/c$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "unionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->i:Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$1$1$1;->a:Lcom/xueqiu/android/common/account/c$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1$1;->b:Lcom/xueqiu/android/common/account/c$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/c;->a(Lcom/xueqiu/android/common/account/c;)V

    .line 102
    return-void
.end method
