.class final Lcom/xueqiu/android/message/model/Talk$2;
.super Ljava/lang/Object;
.source "Talk.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/model/Talk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/xueqiu/android/message/model/Talk;Lcom/xueqiu/android/message/model/Talk;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 229
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v2

    .line 243
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 236
    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    move v0, v1

    .line 239
    goto :goto_0

    .line 240
    :cond_5
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    move v0, v2

    .line 243
    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lcom/xueqiu/android/message/model/Talk;

    check-cast p2, Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/message/model/Talk$2;->compare(Lcom/xueqiu/android/message/model/Talk;Lcom/xueqiu/android/message/model/Talk;)I

    move-result v0

    return v0
.end method
