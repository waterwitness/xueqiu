.class final Lcom/snowballfinance/message/io/c/h$2;
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
        "Ljava/lang/Throwable;",
        "Lrx/a",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$2;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 357
    check-cast p1, Ljava/lang/Throwable;

    .line 1360
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$2;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1360
    const-string v1, "write request error"

    invoke-virtual {v0, v1, p1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1361
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 357
    return-object v0
.end method
