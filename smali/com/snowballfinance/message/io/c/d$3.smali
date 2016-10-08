.class final Lcom/snowballfinance/message/io/c/d$3;
.super Ljava/lang/Object;
.source "FragmentChannel.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/b;

.field final synthetic b:Lcom/snowballfinance/message/io/c/d;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/d;Lcom/snowballfinance/message/io/b;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/d$3;->b:Lcom/snowballfinance/message/io/c/d;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/d$3;->a:Lcom/snowballfinance/message/io/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 166
    .line 1169
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d$3;->b:Lcom/snowballfinance/message/io/c/d;

    iget-object v1, v0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d$3;->b:Lcom/snowballfinance/message/io/c/d;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/d$3;->a:Lcom/snowballfinance/message/io/b;

    .line 2055
    iget-wide v2, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 1170
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d$3;->b:Lcom/snowballfinance/message/io/c/d;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/d$3;->a:Lcom/snowballfinance/message/io/b;

    .line 3055
    iget-wide v2, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 1171
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
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
