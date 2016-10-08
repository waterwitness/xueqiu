.class final Lcom/xueqiu/android/base/h5/l$3;
.super Lcom/xueqiu/android/base/b/p;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/l;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$3;->e:Lcom/xueqiu/android/base/h5/l;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/l$3;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/base/h5/l$3;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/xueqiu/android/base/h5/l$3;->c:Ljava/util/List;

    iput-object p6, p0, Lcom/xueqiu/android/base/h5/l$3;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$3;->e:Lcom/xueqiu/android/base/h5/l;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 594
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$3;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$3;->e:Lcom/xueqiu/android/base/h5/l;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 595
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 591
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2600
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2601
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l$3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2602
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2603
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 2601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2605
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$3;->e:Lcom/xueqiu/android/base/h5/l;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 2605
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l$3;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$3;->e:Lcom/xueqiu/android/base/h5/l;

    .line 4089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 2606
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method
