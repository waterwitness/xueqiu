.class final Lcom/xueqiu/android/base/h5/l$2;
.super Lcom/xueqiu/android/base/b/p;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/l;->a(Ljava/lang/String;Ljava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$2;->d:Lcom/xueqiu/android/base/h5/l;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/l$2;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/base/h5/l$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/xueqiu/android/base/h5/l$2;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 552
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_1

    .line 553
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/base/a/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "404 Not Found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 558
    const-string v0, "404"

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$2;->d:Lcom/xueqiu/android/base/h5/l;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 560
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l$2;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$2;->d:Lcom/xueqiu/android/base/h5/l;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 561
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$2;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void

    .line 555
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/y;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 548
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 2566
    if-eqz p1, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$2;->d:Lcom/xueqiu/android/base/h5/l;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 2567
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$2;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$2;->d:Lcom/xueqiu/android/base/h5/l;

    .line 5089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 2571
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 2569
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$2;->d:Lcom/xueqiu/android/base/h5/l;

    .line 4089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 2569
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
