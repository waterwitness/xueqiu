.class final Lcom/snowballfinance/message/io/c/a$3$1;
.super Ljava/lang/Object;
.source "AbstractFragmentHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/a$3;
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
.field final synthetic a:Lcom/snowballfinance/message/io/c/a$3;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/a$3;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 193
    check-cast p1, Ljava/lang/Boolean;

    .line 1196
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 2092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1197
    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 1198
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 3092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 4073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 1198
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 1199
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 4092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 5073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 1199
    invoke-virtual {v0}, Lrx/i/a;->a()V

    .line 1204
    :goto_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel[%s] valid ops mark as [OP_REV]."

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v4, v4, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 6092
    iget-object v4, v4, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1206
    aput-object v4, v2, v3

    .line 1205
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3$1;->a:Lcom/snowballfinance/message/io/c/a$3;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 5092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 6073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 1201
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "connect timeout"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, v1}, Lrx/i/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
