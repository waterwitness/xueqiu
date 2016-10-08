.class final Lcom/xueqiu/android/base/a$6;
.super Lcom/xueqiu/android/base/b/p;
.source "AdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/a;->e()V
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
.field final synthetic a:Lcom/xueqiu/android/base/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/a;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/xueqiu/android/base/a$6;->a:Lcom/xueqiu/android/base/a;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 416
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 417
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 413
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1421
    invoke-static {}, Lcom/xueqiu/android/base/a;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onResponse response = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    if-eqz p1, :cond_1

    .line 1427
    invoke-static {p1}, Lcom/xueqiu/android/base/a;->a(Lcom/google/gson/JsonObject;)V

    .line 1429
    iget-object v0, p0, Lcom/xueqiu/android/base/a$6;->a:Lcom/xueqiu/android/base/a;

    invoke-static {v0}, Lcom/xueqiu/android/base/a;->b(Lcom/xueqiu/android/base/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1430
    iget-object v2, p0, Lcom/xueqiu/android/base/a$6;->a:Lcom/xueqiu/android/base/a;

    invoke-static {v2, v0, p1}, Lcom/xueqiu/android/base/a;->a(Lcom/xueqiu/android/base/a;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    goto :goto_1

    .line 1421
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 413
    :cond_1
    return-void
.end method
