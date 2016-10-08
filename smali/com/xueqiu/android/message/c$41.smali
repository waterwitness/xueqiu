.class final Lcom/xueqiu/android/message/c$41;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/message/model/Read;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/xueqiu/android/message/c$41;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 286
    check-cast p1, Lcom/xueqiu/android/message/model/Read;

    .line 1289
    iget-object v1, p0, Lcom/xueqiu/android/message/c$41;->a:Lcom/xueqiu/android/message/c;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xueqiu/android/message/model/Read;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2156
    iget-object v2, v1, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-eqz v2, :cond_0

    .line 2157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Read;

    .line 2158
    iget-object v3, v1, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Read;->getToId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Read;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/xueqiu/android/message/a/z;->a(JJ)V

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method
