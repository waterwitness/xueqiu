.class final Lcom/xueqiu/android/message/c$39;
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
        "Lcom/snowballfinance/messageplatform/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/xueqiu/android/message/c$39;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 273
    check-cast p1, Lcom/snowballfinance/messageplatform/a/d;

    .line 1276
    iget-object v0, p0, Lcom/xueqiu/android/message/c$39;->a:Lcom/xueqiu/android/message/c;

    .line 1509
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 1276
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1517
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 1276
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2165
    iget-object v4, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    if-eqz v4, :cond_2

    .line 2166
    iget-object v4, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 2213
    iget-object v5, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v5

    .line 2214
    :try_start_0
    iget-object v0, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 2215
    iget-boolean v7, v4, Lcom/xueqiu/android/message/a/z;->d:Z

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v7

    if-ne v7, v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_0

    .line 2216
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v4}, Lcom/xueqiu/android/message/a/z;->b()V

    .line 2221
    :cond_1
    monitor-exit v5

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
