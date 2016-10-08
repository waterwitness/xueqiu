.class final Lcom/xueqiu/android/trade/c/i$6;
.super Lcom/xueqiu/android/base/b/p;
.source "PerformanceItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/i;
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
.field final synthetic a:Lcom/xueqiu/android/trade/c/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$6;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 246
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 247
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 243
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1251
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$6;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->u()V

    :goto_0
    return-void

    .line 1254
    :cond_0
    const-string v0, "\u5220\u9664\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
