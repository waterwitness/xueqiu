.class final Lcom/xueqiu/android/message/client/a$20;
.super Lrx/i;
.source "CommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;Lrx/a;Z)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$20;->c:Lcom/xueqiu/android/message/client/a;

    iput-object p2, p0, Lcom/xueqiu/android/message/client/a$20;->a:Lrx/a;

    iput-boolean p3, p0, Lcom/xueqiu/android/message/client/a$20;->b:Z

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$20;->a:Lrx/a;

    new-instance v1, Lcom/xueqiu/android/message/client/a$20$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/a$20$2;-><init>(Lcom/xueqiu/android/message/client/a$20;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/a$20$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/a$20$1;-><init>(Lcom/xueqiu/android/message/client/a$20;)V

    .line 372
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 379
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 383
    const-string v0, "CommandHandler"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method
