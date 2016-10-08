.class final Lcom/snowballfinance/message/io/c/h$1;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/h;-><init>([Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field private b:Lrx/j;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x11

    .line 118
    check-cast p1, Ljava/lang/Boolean;

    .line 1122
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->b:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->b:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->b:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 1124
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1124
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1125
    const-string v1, "stop old HRB task."

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->h:Lrx/h;

    .line 1129
    new-instance v1, Lcom/snowballfinance/message/io/c/h$1$1;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$1$1;-><init>(Lcom/snowballfinance/message/io/c/h$1;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h$1;->b:Lrx/j;

    .line 118
    :cond_1
    return-void
.end method
