.class final Lcom/snowballfinance/message/io/c/e$4;
.super Ljava/lang/Object;
.source "FragmentConnector.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/e;->a()Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/e;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/e;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e$4;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    check-cast p1, Ljava/lang/Boolean;

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e$4;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v0}, Lcom/snowballfinance/message/io/c/e;->b(Lcom/snowballfinance/message/io/c/e;)Lcom/snowballfinance/message/io/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/e$4;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v1}, Lcom/snowballfinance/message/io/c/e;->b(Lcom/snowballfinance/message/io/c/e;)Lcom/snowballfinance/message/io/c/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1107
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
