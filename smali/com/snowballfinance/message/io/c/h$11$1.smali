.class final Lcom/snowballfinance/message/io/c/h$11$1;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/h$11;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/h$11;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h$11;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$11$1;->a:Lcom/snowballfinance/message/io/c/h$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 369
    .line 1372
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$11$1;->a:Lcom/snowballfinance/message/io/c/h$11;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$11;->b:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1372
    monitor-enter v1

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$11$1;->a:Lcom/snowballfinance/message/io/c/h$11;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$11;->b:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1373
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$11$1;->a:Lcom/snowballfinance/message/io/c/h$11;

    iget-object v2, v2, Lcom/snowballfinance/message/io/c/h$11;->a:Lcom/snowballfinance/messageplatform/a/y;

    .line 3121
    iget-object v2, v2, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 1373
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$11$1;->a:Lcom/snowballfinance/message/io/c/h$11;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$11;->b:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1374
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$11$1;->a:Lcom/snowballfinance/message/io/c/h$11;

    iget-object v2, v2, Lcom/snowballfinance/message/io/c/h$11;->a:Lcom/snowballfinance/messageplatform/a/y;

    .line 4121
    iget-object v2, v2, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 1374
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
