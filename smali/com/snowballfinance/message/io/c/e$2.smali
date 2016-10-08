.class final Lcom/snowballfinance/message/io/c/e$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/e;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/e;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e$2;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Throwable;

    .line 1061
    invoke-static {}, Lcom/snowballfinance/message/io/c/e;->d()Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    const-string v1, "read fragment error"

    invoke-virtual {v0, v1, p1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1062
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e$2;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v0}, Lcom/snowballfinance/message/io/c/e;->a(Lcom/snowballfinance/message/io/c/e;)Lrx/i/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
