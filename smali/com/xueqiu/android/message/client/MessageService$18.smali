.class final Lcom/xueqiu/android/message/client/MessageService$18;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$18;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$18;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$18;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->c(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 152
    :cond_0
    return-void
.end method
