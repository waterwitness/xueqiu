.class final Lcom/snowballfinance/message/io/c/h$9;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/h;->b()Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    check-cast p1, Ljava/lang/Throwable;

    .line 1272
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1272
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1273
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1273
    const-string v1, "%s connect error."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 1273
    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1274
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    .line 5057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 1274
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->c()V

    .line 1275
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    .line 6057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    .line 1275
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 1276
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$9;->a:Lcom/snowballfinance/message/io/c/h;

    .line 7057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 1276
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 269
    return-void
.end method
