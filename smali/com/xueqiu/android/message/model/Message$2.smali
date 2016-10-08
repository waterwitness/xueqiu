.class final Lcom/xueqiu/android/message/model/Message$2;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/model/Message;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/model/Message;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 312
    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 313
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 314
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    .line 317
    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move v0, v1

    .line 319
    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 323
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 309
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    check-cast p2, Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/message/model/Message$2;->compare(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/model/Message;)I

    move-result v0

    return v0
.end method
