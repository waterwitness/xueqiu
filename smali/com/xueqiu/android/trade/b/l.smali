.class public interface abstract Lcom/xueqiu/android/trade/b/l;
.super Ljava/lang/Object;
.source "TradeHistoryContract.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract L_()V
.end method

.method public abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TrustDeed;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/Transaction;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public abstract refresh()V
.end method
