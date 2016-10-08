.class final Lcom/xueqiu/android/community/d/c$5;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/c;
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
.field final synthetic a:Lcom/xueqiu/android/community/d/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/xueqiu/android/community/d/c$5;->a:Lcom/xueqiu/android/community/d/c;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 174
    check-cast p1, Lorg/json/JSONObject;

    .line 1179
    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$5;->a:Lcom/xueqiu/android/community/d/c;

    .line 2050
    iget-object v1, v1, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1180
    invoke-interface {v1, v0}, Lcom/xueqiu/android/community/b/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :goto_0
    return-void

    .line 1182
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
