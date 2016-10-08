.class final Lcom/snowballfinance/message/io/c/h$5$1;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/h$5;
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/h$5;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h$5;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$5$1;->a:Lcom/snowballfinance/message/io/c/h$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5$1;->a:Lcom/snowballfinance/message/io/c/h$5;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 1057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    .line 210
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5$1;->a:Lcom/snowballfinance/message/io/c/h$5;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    .line 210
    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5$1;->a:Lcom/snowballfinance/message/io/c/h$5;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    .line 211
    invoke-interface {v0}, Lrx/j;->b()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$5$1;->a:Lcom/snowballfinance/message/io/c/h$5;

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h$5;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/h;->b()Lrx/a;

    .line 214
    return-void
.end method
