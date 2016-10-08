.class final Lcom/xueqiu/android/message/ChatActivity$65;
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
    .line 1937
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$65;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$65;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$65;->a:Landroid/content/Intent;

    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 1941
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$65;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 2639
    iget-object v2, v1, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    const/16 v3, 0xb

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 2639
    invoke-virtual {v2, v3, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v2

    .line 2640
    const-string v3, "%s/S/%s?im=true"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "https://xueqiu.com"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 2641
    iget-object v0, v1, Lcom/xueqiu/android/message/ChatActivity;->q:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2642
    const-string v0, "\u6211:[\u80a1\u7968]"

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 2646
    :goto_0
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/model/Message;)V

    .line 1942
    return-void

    .line 2644
    :cond_0
    const-string v0, "[\u80a1\u7968]"

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
