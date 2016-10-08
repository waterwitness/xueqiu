.class final Lcom/xueqiu/android/message/client/MessageService$24$1;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/MessageService$24;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService$24;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService$24;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$24$1;->a:Lcom/xueqiu/android/message/client/MessageService$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 259
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 1262
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$24$1;->a:Lcom/xueqiu/android/message/client/MessageService$24;

    iget-object v0, v0, Lcom/xueqiu/android/message/client/MessageService$24;->b:Lrx/i/a;

    invoke-virtual {v0, p1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 1263
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$24$1;->a:Lcom/xueqiu/android/message/client/MessageService$24;

    iget-object v0, v0, Lcom/xueqiu/android/message/client/MessageService$24;->b:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->a()V

    .line 259
    return-void
.end method
