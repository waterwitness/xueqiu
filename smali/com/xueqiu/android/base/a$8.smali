.class public final Lcom/xueqiu/android/base/a$8;
.super Lcom/xueqiu/android/base/b/p;
.source "AdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/a;
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
.method public constructor <init>(Lcom/xueqiu/android/base/a;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/xueqiu/android/base/a$8;->a:Lcom/xueqiu/android/base/a;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 649
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 650
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 646
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1654
    if-eqz p1, :cond_1

    .line 1660
    const-string v0, "bomb_box"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1661
    const-string v0, "bomb_box"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1662
    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/r;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1663
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1669
    :goto_0
    if-eqz v2, :cond_3

    .line 1670
    iget-object v2, p0, Lcom/xueqiu/android/base/a$8;->a:Lcom/xueqiu/android/base/a;

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/a;->a(Lcom/xueqiu/android/base/a;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 1671
    invoke-static {v0}, Lcom/xueqiu/android/base/a;->b(Lcom/google/gson/JsonObject;)V

    .line 1674
    if-eqz v0, :cond_1

    .line 1675
    const-string v2, "image"

    .line 2106
    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1676
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1677
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1678
    :cond_0
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    .line 1679
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v3

    .line 1678
    invoke-virtual {v2, v0, v3, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1681
    :cond_1
    :goto_1
    return-void

    .line 1666
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1683
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/base/a$8;->a:Lcom/xueqiu/android/base/a;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/a;->a(Lcom/xueqiu/android/base/a;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 1684
    iget-object v0, p0, Lcom/xueqiu/android/base/a$8;->a:Lcom/xueqiu/android/base/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->f()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
