.class final Lcom/snowballfinance/message/io/c/e$3;
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
    .line 109
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e$3;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 109
    check-cast p1, Ljava/lang/Boolean;

    .line 1112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-static {}, Lcom/snowballfinance/message/io/c/e;->d()Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-static {}, Lcom/snowballfinance/message/io/c/e;->d()Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    const-string v1, "sent [FIN] to %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e$3;->a:Lcom/snowballfinance/message/io/c/e;

    invoke-static {v4}, Lcom/snowballfinance/message/io/c/e;->b(Lcom/snowballfinance/message/io/c/e;)Lcom/snowballfinance/message/io/c/d;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
