.class final Lcom/snowballfinance/message/io/c/h$1$1$1;
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
        "Ljava/lang/Boolean;",
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
    .line 145
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->a:Lcom/snowballfinance/message/io/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 145
    check-cast p1, Ljava/lang/Boolean;

    .line 1148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1149
    const-string v1, "sent [HRB:%s] to channel[%s] failed."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->a:Lcom/snowballfinance/message/io/b;

    .line 3055
    iget-wide v4, v3, Lcom/snowballfinance/message/io/b;->a:J

    .line 1149
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 3074
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 1149
    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 1150
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 5057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1152
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 6057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1153
    const-string v1, "sent [HRB:%s] to channel[%s] succeed."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->a:Lcom/snowballfinance/message/io/b;

    .line 7055
    iget-wide v4, v3, Lcom/snowballfinance/message/io/b;->a:J

    .line 1153
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$1$1$1;->b:Lcom/snowballfinance/message/io/c/h$1$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1$1;->a:Lcom/snowballfinance/message/io/c/h$1;

    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h$1;->a:Lcom/snowballfinance/message/io/c/h;

    .line 7057
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 7074
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 1153
    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
