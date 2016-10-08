.class final Lcom/xueqiu/android/community/WriteStatusActivity$42;
.super Lcom/xueqiu/android/base/b/p;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$42;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$42;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$42;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$42;->a:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 2273
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 2254
    check-cast p1, Ljava/util/ArrayList;

    .line 3258
    if-eqz p1, :cond_1

    .line 3259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3260
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 3261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3262
    const-string v4, "name_key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3263
    const-string v4, "code"

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3266
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$42;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$42;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 2254
    :cond_1
    return-void
.end method
