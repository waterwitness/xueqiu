.class final Lcom/xueqiu/android/cube/b/h$1;
.super Ljava/lang/Object;
.source "RebalanceFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/b/h;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/cube/model/Holding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$1;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    check-cast p1, Lcom/xueqiu/android/cube/model/Holding;

    check-cast p2, Lcom/xueqiu/android/cube/model/Holding;

    .line 1150
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$1;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$1;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v2, v0

    .line 1152
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$1;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$1;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1153
    :cond_0
    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 1154
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 1162
    :goto_1
    return v0

    :cond_1
    move-wide v2, v4

    .line 1151
    goto :goto_0

    .line 1156
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1159
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 1160
    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_1

    .line 1162
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    .line 147
    goto :goto_1
.end method
