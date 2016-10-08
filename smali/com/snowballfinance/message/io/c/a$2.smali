.class final Lcom/snowballfinance/message/io/c/a$2;
.super Ljava/lang/Object;
.source "AbstractFragmentHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/a;
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
.field final synthetic a:Lrx/j;

.field final synthetic b:Lcom/snowballfinance/message/io/c/a;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/a;Lrx/j;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/a$2;->b:Lcom/snowballfinance/message/io/c/a;

    iput-object p2, p0, Lcom/snowballfinance/message/io/c/a$2;->a:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 118
    .line 1121
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/a$2;->a:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 118
    return-void
.end method
