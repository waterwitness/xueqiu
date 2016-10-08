.class final Lcom/xueqiu/android/message/client/MessageService$4;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$4;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 297
    check-cast p1, Ljava/lang/Integer;

    .line 1300
    sget-object v0, Lcom/xueqiu/android/message/client/c;->n:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Ljava/lang/Object;)V

    .line 297
    return-void
.end method
