.class final Lcom/snowballfinance/message/io/c/a$3;
.super Ljava/lang/Object;
.source "AbstractFragmentHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/a;->a(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V
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
.field final synthetic a:Lcom/snowballfinance/message/io/c/c;

.field final synthetic b:Lcom/snowballfinance/message/io/c/a;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/a;Lcom/snowballfinance/message/io/c/c;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    check-cast p1, Ljava/lang/Boolean;

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 2092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1181
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 1182
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel[%s] valid ops mark as [OP_SKI]."

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 3092
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1184
    aput-object v3, v2, v8

    .line 1183
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 4092
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1187
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 5092
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1188
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v1

    .line 1189
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v2, v2, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/a$3;->b:Lcom/snowballfinance/message/io/c/a;

    iget-object v2, v2, Lcom/snowballfinance/message/io/c/a;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "sent [REV:%s, ACK:%s] to %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 6055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 1191
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 6073
    iget-boolean v0, v0, Lcom/snowballfinance/message/io/b;->c:Z

    .line 1191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/snowballfinance/message/io/c/a$3;->a:Lcom/snowballfinance/message/io/c/c;

    .line 6092
    iget-object v5, v5, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 1191
    aput-object v5, v4, v0

    .line 1190
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1193
    :cond_1
    new-instance v0, Lcom/snowballfinance/message/io/c/a$3$1;

    invoke-direct {v0, p0}, Lcom/snowballfinance/message/io/c/a$3$1;-><init>(Lcom/snowballfinance/message/io/c/a$3;)V

    invoke-virtual {v1, v0}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 176
    :cond_2
    return-void
.end method
