.class final Lcom/snowballfinance/message/io/c/h$4;
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
    .line 175
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$4;->a:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 175
    check-cast p1, Ljava/lang/Boolean;

    .line 1178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$4;->a:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    const/4 v1, 0x1

    iput v1, v0, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 175
    :cond_0
    return-void
.end method
