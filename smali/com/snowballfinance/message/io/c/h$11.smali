.class final Lcom/snowballfinance/message/io/c/h$11;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/a",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/messageplatform/a/y;

.field final synthetic b:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;Lcom/snowballfinance/messageplatform/a/y;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$11;->b:Lcom/snowballfinance/message/io/c/h;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/h$11;->a:Lcom/snowballfinance/messageplatform/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 363
    check-cast p1, Ljava/lang/Boolean;

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    .line 1368
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$11;->b:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1368
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$11;->a:Lcom/snowballfinance/messageplatform/a/y;

    .line 2121
    iget-object v2, v2, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 1368
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    new-instance v1, Lcom/snowballfinance/message/io/c/h$11$1;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$11$1;-><init>(Lcom/snowballfinance/message/io/c/h$11;)V

    invoke-virtual {v0, v1}, Lrx/i/a;->c(Lrx/c/b;)Lrx/j;

    .line 1379
    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$11;->a:Lcom/snowballfinance/messageplatform/a/y;

    .line 3121
    iget-object v0, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 1381
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    const-string v2, "write request error."

    invoke-static {v0, v1, v2}, Lcom/snowballfinance/messageplatform/a/z;->a(IILjava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
