.class final Lcom/snowballfinance/message/io/c/h$1$1;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/h$1;
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/h$1;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h$1;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 1057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 132
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 133
    :goto_0
    if-eqz v0, :cond_2

    .line 134
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 134
    const-string v4, "%s not yet connected, ready to reconnect."

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v6, v6, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v6, v6, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 134
    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V

    .line 138
    :goto_1
    if-nez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 5057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 5074
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 139
    invoke-virtual {v0, v7}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 6057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 140
    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 7057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 141
    const-string v4, "send [HRB:%s] to channel[%s]."

    new-array v5, v7, [Ljava/lang/Object;

    .line 8055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 141
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v2, v2, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 8057
    iget-object v2, v2, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 8074
    iget-object v2, v2, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 141
    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 9057
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 9074
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 143
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 144
    invoke-virtual {v1, v2, v3, v4}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/snowballfinance/message/io/c/h$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/snowballfinance/message/io/c/h$1$1$1;-><init>(Lcom/snowballfinance/message/io/c/h$1$1;Lcom/snowballfinance/message/io/b;)V

    new-instance v3, Lcom/snowballfinance/message/io/c/h$1$1$2;

    invoke-direct {v3, p0, v0}, Lcom/snowballfinance/message/io/c/h$1$1$2;-><init>(Lcom/snowballfinance/message/io/c/h$1$1;Lcom/snowballfinance/message/io/b;)V

    .line 145
    invoke-virtual {v1, v2, v3}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 170
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 132
    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 4074
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 136
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->c()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 10057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 165
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 11057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 166
    const-string v2, "try to reconnect"

    invoke-virtual {v0, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 12057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method
