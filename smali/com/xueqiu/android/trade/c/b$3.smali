.class final Lcom/xueqiu/android/trade/c/b$3;
.super Lcom/xueqiu/android/base/b/p;
.source "InputPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b;->d()V
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
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$3;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 408
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 409
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 405
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1413
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$3;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    if-eqz p1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$3;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/trade/c/b;Lcom/google/gson/JsonObject;)V

    .line 405
    :cond_0
    return-void
.end method
