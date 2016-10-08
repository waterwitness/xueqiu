.class final Lcom/snowballfinance/message/io/c/e$5;
.super Ljava/lang/Object;
.source "FragmentConnector.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/e;->a()Lrx/a;
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
.field final synthetic a:Lcom/snowballfinance/message/io/c/e;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/e;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e$5;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 120
    check-cast p1, Ljava/lang/Boolean;

    .line 1123
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e$5;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v0}, Lcom/snowballfinance/message/io/c/e;->c(Lcom/snowballfinance/message/io/c/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    return-void
.end method
