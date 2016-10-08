.class final Lcom/xueqiu/android/base/h5/l$15;
.super Lrx/i;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/l;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/OAuthBindResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$15;->c:Lcom/xueqiu/android/base/h5/l;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/l$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/l$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 488
    check-cast p1, Lcom/xueqiu/android/common/model/OAuthBindResult;

    .line 1510
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/OAuthBindResult;->getExpiresIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$15;->c:Lcom/xueqiu/android/base/h5/l;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 1511
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$15;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$15;->c:Lcom/xueqiu/android/base/h5/l;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 1513
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$15;->a:Ljava/lang/String;

    const-string v2, "\u8fc7\u671f"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 497
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_1

    .line 498
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/base/a/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "404 Not Found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 503
    const-string v0, "404"

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$15;->c:Lcom/xueqiu/android/base/h5/l;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 505
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l$15;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
