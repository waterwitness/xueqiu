.class final Lcom/snowballfinance/message/io/c/e$6;
.super Ljava/lang/Object;
.source "FragmentConnector.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/message/io/b;",
        "Lcom/snowballfinance/message/io/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/e;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/e;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e$6;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 155
    check-cast p1, Lcom/snowballfinance/message/io/b;

    .line 1158
    new-instance v1, Lcom/snowballfinance/message/io/c/f;

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e$6;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v0}, Lcom/snowballfinance/message/io/c/e;->b(Lcom/snowballfinance/message/io/c/e;)Lcom/snowballfinance/message/io/c/d;

    move-result-object v0

    const-string v2, "CONTEXT"

    invoke-virtual {v0, v2}, Lcom/snowballfinance/message/io/c/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/message/io/c/c;

    invoke-direct {v1, v0, p1}, Lcom/snowballfinance/message/io/c/f;-><init>(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V

    .line 155
    return-object v1
.end method
