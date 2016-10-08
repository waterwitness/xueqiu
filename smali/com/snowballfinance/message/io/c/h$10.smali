.class final Lcom/snowballfinance/message/io/c/h$10;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/message/io/c/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$10;->d:Lcom/snowballfinance/message/io/c/h;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/h$10;->a:Lcom/snowballfinance/message/io/c/k;

    iput-object p3, p0, Lcom/snowballfinance/message/io/c/h$10;->b:Ljava/lang/String;

    iput p4, p0, Lcom/snowballfinance/message/io/c/h$10;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Lcom/snowballfinance/message/io/c/j;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/c/j;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$10;->a:Lcom/snowballfinance/message/io/c/k;

    .line 1029
    iput-object v1, v0, Lcom/snowballfinance/message/io/c/j;->a:Lcom/snowballfinance/message/io/c/k;

    .line 321
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$10;->b:Ljava/lang/String;

    .line 1037
    iput-object v1, v0, Lcom/snowballfinance/message/io/c/j;->b:Ljava/lang/String;

    .line 322
    iget v1, p0, Lcom/snowballfinance/message/io/c/h$10;->c:I

    .line 1045
    iput v1, v0, Lcom/snowballfinance/message/io/c/j;->c:I

    .line 323
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$10;->d:Lcom/snowballfinance/message/io/c/h;

    .line 1057
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->m:Lrx/i/c;

    .line 323
    invoke-virtual {v1, v0}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 324
    return-void
.end method
