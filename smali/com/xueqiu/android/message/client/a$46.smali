.class final Lcom/xueqiu/android/message/client/a$46;
.super Lrx/i;
.source "CommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/a;

.field final synthetic b:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;Lrx/a;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$46;->b:Lcom/xueqiu/android/message/client/a;

    iput-object p2, p0, Lcom/xueqiu/android/message/client/a$46;->a:Lrx/a;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$46;->a:Lrx/a;

    invoke-virtual {v0}, Lrx/a;->g()Lrx/j;

    .line 554
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 558
    const-string v0, "CommandHandler"

    const-string v1, "request users and groups error."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    return-void
.end method
