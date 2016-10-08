.class final Lcom/xueqiu/android/message/ChatActivity$60;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/messageplatform/data/Message;",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$60;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1833
    check-cast p1, Lcom/snowballfinance/messageplatform/data/Message;

    .line 2836
    invoke-static {p1}, Lcom/xueqiu/android/message/model/Message;->wrapPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v0

    .line 1833
    return-object v0
.end method
