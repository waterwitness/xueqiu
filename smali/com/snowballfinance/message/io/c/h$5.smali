.class final Lcom/snowballfinance/message/io/c/h$5;
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


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 183
    check-cast p1, Ljava/lang/Boolean;

    .line 1187
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    .line 1187
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 1188
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/h;->c()V

    .line 1189
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 4057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    .line 1189
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 5057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    .line 1189
    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 6057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1190
    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 7057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1191
    const-string v1, "already to be connecting"

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 8057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->i:Lrx/i/c;

    .line 1195
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 1196
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 9057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 10057
    iget v0, v0, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 1198
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 11057
    iget v1, v1, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 1198
    if-gtz v1, :cond_4

    .line 1199
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 12057
    iput v3, v1, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 1204
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 16057
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1204
    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1205
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 17057
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 1205
    const-string v2, "will delay %ds to reconnect."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 1207
    :cond_3
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 18057
    iget-object v2, v2, Lcom/snowballfinance/message/io/c/h;->h:Lrx/h;

    .line 1207
    new-instance v3, Lcom/snowballfinance/message/io/c/h$5$1;

    invoke-direct {v3, p0}, Lcom/snowballfinance/message/io/c/h$5$1;-><init>(Lcom/snowballfinance/message/io/c/h$5;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v0}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    .line 19057
    iput-object v0, v1, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    goto :goto_0

    .line 1200
    :cond_4
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 13057
    iget v1, v1, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 1200
    const/16 v2, 0x200

    if-ge v1, v2, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 14057
    iget v2, v2, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 1201
    mul-int/lit8 v2, v2, 0x2

    .line 15057
    iput v2, v1, Lcom/snowballfinance/message/io/c/h;->o:I

    goto :goto_1
.end method
