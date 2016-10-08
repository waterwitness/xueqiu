.class final Lcom/snowballfinance/message/io/c/h$3$1$1;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/h$3$1;
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
.field final synthetic a:Lcom/snowballfinance/message/io/c/h$3$1;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h$3$1;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 545
    check-cast p1, Ljava/lang/Boolean;

    .line 1548
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->b:Lcom/snowballfinance/message/io/c/h$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->i:Lrx/i/c;

    .line 1549
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 1550
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 2092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1550
    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 1551
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 3092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 4073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 1551
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 1552
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 4092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 5073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 1552
    invoke-virtual {v0}, Lrx/i/a;->a()V

    .line 1553
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->b:Lcom/snowballfinance/message/io/c/h$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->b:Lcom/snowballfinance/message/io/c/h$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel[%s] valid ops mark as [OP_REV]."

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$3$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 5092
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1554
    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->b:Lcom/snowballfinance/message/io/c/h$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1558
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->b:Lcom/snowballfinance/message/io/c/h$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel[%s] REV timeout."

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$3$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 6092
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1558
    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3$1$1;->a:Lcom/snowballfinance/message/io/c/h$3$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3$1;->b:Lcom/snowballfinance/message/io/c/h$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 7057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 1560
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
