.class final Lcom/xueqiu/android/message/ChatActivity$38;
.super Lcom/xueqiu/android/base/b/p;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$38;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$38;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->i()V

    .line 1111
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1112
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1107
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 2116
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$38;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->i()V

    .line 2117
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    .line 2118
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$38;->a:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$38;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)V

    .line 1107
    return-void
.end method
