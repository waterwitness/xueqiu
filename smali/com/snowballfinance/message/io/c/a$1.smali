.class final Lcom/snowballfinance/message/io/c/a$1;
.super Ljava/lang/Object;
.source "AbstractFragmentHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/a;
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
.field final synthetic a:Lcom/snowballfinance/message/io/c/c;

.field final synthetic b:Lcom/snowballfinance/message/io/c/a;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/a;Lcom/snowballfinance/message/io/c/c;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/a$1;->b:Lcom/snowballfinance/message/io/c/a;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/a$1;->a:Lcom/snowballfinance/message/io/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 106
    check-cast p1, Ljava/lang/Boolean;

    .line 1109
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 2092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1110
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 1111
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$1;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$1;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel[%s] valid ops mark as [OP_PKI]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/a$1;->a:Lcom/snowballfinance/message/io/c/c;

    .line 3092
    iget-object v4, v4, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1113
    aput-object v4, v2, v3

    .line 1112
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method
