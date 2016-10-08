.class final Lcom/xueqiu/android/base/b/ao$2;
.super Lcom/xueqiu/android/base/b/p;
.source "WeChatAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ao;->a(Lcom/xueqiu/android/base/b/i;)V
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
.field final synthetic a:Lcom/xueqiu/android/base/b/i;

.field final synthetic b:Lcom/xueqiu/android/base/b/ao;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ao;Lcom/xueqiu/android/base/b/i;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ao$2;->b:Lcom/xueqiu/android/base/b/ao;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/ao$2;->a:Lcom/xueqiu/android/base/b/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "error"

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    check-cast p1, Lorg/json/JSONObject;

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$2;->b:Lcom/xueqiu/android/base/b/ao;

    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2024
    iput-object v1, v0, Lcom/xueqiu/android/base/b/ao;->e:Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$2;->b:Lcom/xueqiu/android/base/b/ao;

    const-string v1, "unionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3024
    iput-object v1, v0, Lcom/xueqiu/android/base/b/ao;->h:Ljava/lang/String;

    .line 1106
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$2;->a:Lcom/xueqiu/android/base/b/i;

    invoke-interface {v0}, Lcom/xueqiu/android/base/b/i;->a()V

    .line 96
    return-void
.end method
