.class final Lcom/xueqiu/android/common/widget/ah;
.super Ljava/lang/Object;
.source "SNBWebView.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/SNBWebView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/SNBWebView;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ah;->a:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    .line 241
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 270
    :goto_1
    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/NameValuePair;

    .line 256
    :goto_2
    const-string v2, "GET"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ah;->a:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v2}, Lcom/xueqiu/android/common/widget/SNBWebView;->a(Lcom/xueqiu/android/common/widget/SNBWebView;)Lcom/xueqiu/android/base/b/w;

    move-result-object v2

    .line 2100
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v0}, Lcom/xueqiu/android/base/b/v;->a(ILjava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_3
    const-string v2, "SNBWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "SNBWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parms="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "SNBWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ah;->a:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v2}, Lcom/xueqiu/android/common/widget/SNBWebView;->a(Lcom/xueqiu/android/common/widget/SNBWebView;)Lcom/xueqiu/android/base/b/w;

    move-result-object v2

    .line 3093
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v0}, Lcom/xueqiu/android/base/b/v;->a(ILjava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 228
    return-object v0
.end method

.method public final goBack()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ah;->a:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->goBack()V

    .line 234
    return-void
.end method
