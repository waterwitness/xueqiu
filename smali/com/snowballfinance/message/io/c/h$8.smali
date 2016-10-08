.class final Lcom/snowballfinance/message/io/c/h$8;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$8;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 259
    check-cast p1, Ljava/lang/Boolean;

    .line 1262
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$8;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1263
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$8;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    .line 1263
    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 1264
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$8;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 1265
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->c()V

    .line 1266
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$8;->a:Lcom/snowballfinance/message/io/c/h;

    .line 5057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 1266
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 259
    :cond_0
    return-void
.end method
