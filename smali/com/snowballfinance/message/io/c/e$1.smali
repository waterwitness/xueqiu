.class final Lcom/snowballfinance/message/io/c/e$1;
.super Ljava/lang/Object;
.source "FragmentConnector.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/e;->e()Lcom/snowballfinance/message/io/c/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/message/io/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/e;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/e;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e$1;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/snowballfinance/message/io/b;

    .line 1056
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e$1;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v0}, Lcom/snowballfinance/message/io/c/e;->a(Lcom/snowballfinance/message/io/c/e;)Lrx/i/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
