.class final Lcom/xueqiu/android/base/h5/c$1;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/l;Lcom/google/gson/JsonArray;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonArray;

.field final synthetic b:Lcom/xueqiu/android/base/h5/l;

.field final synthetic c:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/google/gson/JsonArray;Lcom/xueqiu/android/base/h5/l;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$1;->c:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$1;->a:Lcom/google/gson/JsonArray;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/c$1;->b:Lcom/xueqiu/android/base/h5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$1;->a:Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$1;->c:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v1}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;)Lcom/xueqiu/android/common/widget/SNBWebView;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x1

    return v0
.end method
