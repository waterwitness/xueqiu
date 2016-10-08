.class final Lcom/xueqiu/android/community/a/y$13;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/y;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/google/gson/JsonObject;

.field final synthetic c:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$13;->c:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$13;->a:Lcom/google/gson/JsonObject;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/y$13;->b:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 278
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$13;->c:Lcom/xueqiu/android/community/a/y;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$13;->a:Lcom/google/gson/JsonObject;

    .line 1420
    const-string v0, "has_exist"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, v1, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/b/s;->b(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    .line 1425
    :goto_0
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 1426
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/community/a/y$5;

    invoke-direct {v3, v1, v2}, Lcom/xueqiu/android/community/a/y$5;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/google/gson/JsonObject;)V

    new-instance v2, Lcom/xueqiu/android/community/a/y$6;

    invoke-direct {v2, v1}, Lcom/xueqiu/android/community/a/y$6;-><init>(Lcom/xueqiu/android/community/a/y;)V

    .line 1427
    invoke-virtual {v0, v3, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 279
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 280
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$13;->b:Lcom/google/gson/JsonObject;

    const-string v3, "symbol"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 282
    return-void

    .line 1423
    :cond_0
    iget-object v0, v1, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/b/s;->a(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
