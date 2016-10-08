.class final Lcom/xueqiu/android/message/ChatActivity$9;
.super Lcom/xueqiu/android/base/b/p;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 657
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->i()V

    .line 661
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 662
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->f(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 663
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 657
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1667
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->i()V

    .line 1668
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    .line 1669
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)Lcom/xueqiu/android/message/model/Talk;

    .line 1670
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$9;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->f(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 657
    return-void
.end method
