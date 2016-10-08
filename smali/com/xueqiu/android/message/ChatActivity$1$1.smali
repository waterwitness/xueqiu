.class final Lcom/xueqiu/android/message/ChatActivity$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity$1;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$1$1;->a:Lcom/xueqiu/android/message/ChatActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 258
    check-cast p1, Ljava/util/List;

    .line 1261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$1$1;->a:Lcom/xueqiu/android/message/ChatActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$1;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/util/List;)V

    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$1$1;->a:Lcom/xueqiu/android/message/ChatActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$1;->c:Lcom/xueqiu/android/message/ChatActivity;

    const v1, 0x7f070249

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
