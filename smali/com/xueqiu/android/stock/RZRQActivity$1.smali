.class final Lcom/xueqiu/android/stock/RZRQActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "RZRQActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/RZRQActivity;
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
.field final synthetic a:Lcom/xueqiu/android/stock/RZRQActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/RZRQActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/stock/RZRQActivity$1;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 66
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 62
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity$1;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/RZRQActivity;->a(Lcom/xueqiu/android/stock/RZRQActivity;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity$1;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/RZRQActivity;->a(Lcom/xueqiu/android/stock/RZRQActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/xueqiu/android/stock/RZRQActivity$1;->a:Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/RZRQActivity;->a(Lcom/xueqiu/android/stock/RZRQActivity;)V

    .line 62
    return-void
.end method
