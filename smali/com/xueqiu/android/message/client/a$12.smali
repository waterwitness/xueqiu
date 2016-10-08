.class final Lcom/xueqiu/android/message/client/a$12;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;Z)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$12;->b:Lcom/xueqiu/android/message/client/a;

    iput-boolean p2, p0, Lcom/xueqiu/android/message/client/a$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 173
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 1176
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$12;->b:Lcom/xueqiu/android/message/client/a;

    iget-boolean v1, p0, Lcom/xueqiu/android/message/client/a$12;->a:Z

    .line 2723
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/client/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2724
    iget-object v0, v0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Lcom/xueqiu/android/message/model/Message;)V

    .line 173
    :cond_0
    return-void
.end method
