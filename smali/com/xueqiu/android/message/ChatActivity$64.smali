.class final Lcom/xueqiu/android/message/ChatActivity$64;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$64;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$64;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$64;->a:Landroid/content/Intent;

    const-string v1, "extra_name_card"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1931
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$64;->b:Lcom/xueqiu/android/message/ChatActivity;

    .line 2627
    iget-object v2, v1, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    const/16 v3, 0xc

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 2627
    invoke-virtual {v2, v3, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v2

    .line 2628
    const-string v3, "/%d?im=true"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 2629
    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2630
    const-string v0, "\u6211:[\u540d\u7247]"

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 2635
    :goto_0
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Message;)V

    .line 1932
    return-void

    .line 2632
    :cond_0
    const-string v0, "[\u540d\u7247]"

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
