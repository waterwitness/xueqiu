.class final Lcom/xueqiu/android/stockchart/d/a$1;
.super Ljava/lang/Object;
.source "BaseChartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    .line 2678
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a(Z)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    .line 181
    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    .line 2682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long v6, v2, v4

    .line 2683
    const-string v2, "/stock/forchartk/stocklist.json"

    .line 2685
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2686
    const-string v1, "symbol"

    iget-object v3, v0, Lcom/xueqiu/android/stockchart/d/a;->an:Ljava/lang/String;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2687
    const-string v3, "period"

    iget-object v1, v0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    const-string v5, "1minute"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1m"

    :goto_1
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    const-string v1, "type"

    iget-object v3, v0, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2689
    const-string v1, "end"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    const-string v1, "count"

    const-string v3, "2"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    new-instance v5, Lcom/xueqiu/android/stockchart/d/a$5;

    invoke-direct {v5, v0}, Lcom/xueqiu/android/stockchart/d/a$5;-><init>(Lcom/xueqiu/android/stockchart/d/a;)V

    .line 2761
    const-string v1, "stock"

    const-string v3, "get"

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aL:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$1;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v1}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2687
    :cond_3
    iget-object v1, v0, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    goto :goto_1
.end method
