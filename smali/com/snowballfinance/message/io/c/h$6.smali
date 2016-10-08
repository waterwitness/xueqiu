.class final Lcom/snowballfinance/message/io/c/h$6;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowballfinance/message/io/c/h;->b()Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/message/io/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/snowballfinance/message/io/c/g;

.field final synthetic b:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$6;->b:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$6;->b:Lcom/snowballfinance/message/io/c/h;

    .line 1455
    new-instance v1, Lcom/snowballfinance/message/io/c/h$3;

    invoke-direct {v1, v0}, Lcom/snowballfinance/message/io/c/h$3;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    .line 246
    iput-object v1, p0, Lcom/snowballfinance/message/io/c/h$6;->a:Lcom/snowballfinance/message/io/c/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 245
    check-cast p1, Lcom/snowballfinance/message/io/c/f;

    .line 2250
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$6;->a:Lcom/snowballfinance/message/io/c/g;

    invoke-interface {v0, p1}, Lcom/snowballfinance/message/io/c/g;->a(Lcom/snowballfinance/message/io/c/f;)V

    .line 245
    return-void
.end method
