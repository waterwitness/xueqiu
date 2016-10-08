.class final Lcom/snowballfinance/message/io/c/h$1$1$2;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/h$1$1;->a()V
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
.field final synthetic a:Lcom/snowballfinance/message/io/b;

.field final synthetic b:Lcom/snowballfinance/message/io/c/h$1$1;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h$1$1;Lcom/snowballfinance/message/io/b;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$1$1$2;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/h$1$1$2;->a:Lcom/snowballfinance/message/io/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 157
    .line 1160
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1$2;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1160
    const-string v1, "sent [HRB:%s] to channel[%s] failed."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/h$1$1$2;->a:Lcom/snowballfinance/message/io/b;

    .line 3055
    iget-wide v4, v4, Lcom/snowballfinance/message/io/b;->a:J

    .line 1160
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1$2;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 3074
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 1160
    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1$2;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 1161
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 157
    return-void
.end method
