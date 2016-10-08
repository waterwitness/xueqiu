.class final Lcom/xueqiu/android/message/client/MessageService$6;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/message/io/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$6;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 304
    check-cast p1, Lcom/snowballfinance/message/io/c/j;

    .line 1307
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    .line 2139
    iget-object v0, v0, Lcom/xueqiu/android/base/q;->b:Lcom/xueqiu/android/base/util/y;

    .line 1308
    if-eqz v0, :cond_0

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IM_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3025
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/j;->a:Lcom/snowballfinance/message/io/c/k;

    .line 1309
    invoke-virtual {v2}, Lcom/snowballfinance/message/io/c/k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3033
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/j;->b:Ljava/lang/String;

    .line 3041
    iget v3, p1, Lcom/snowballfinance/message/io/c/j;->c:I

    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/util/y;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 304
    :cond_0
    return-void
.end method
