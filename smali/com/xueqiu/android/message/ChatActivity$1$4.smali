.class final Lcom/xueqiu/android/message/ChatActivity$1$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/messageplatform/data/Message;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity$1;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$1$4;->a:Lcom/xueqiu/android/message/ChatActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    check-cast p1, Lcom/snowballfinance/messageplatform/data/Message;

    .line 1245
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getFromId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getToId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 242
    return-object v0

    .line 1245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
