.class final Lcom/xueqiu/android/message/client/a$2;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$2;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 213
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 1216
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1217
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REQUEST_JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1216
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 213
    return-object v0

    .line 1217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
