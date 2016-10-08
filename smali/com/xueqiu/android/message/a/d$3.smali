.class final Lcom/xueqiu/android/message/a/d$3;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/d;->a(Landroid/view/View;Lcom/xueqiu/android/message/model/Message;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Message;

.field final synthetic b:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$3;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 920
    if-nez p2, :cond_1

    .line 921
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$3;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getClipboardData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 923
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    const-string v1, "extra_message"

    iget-object v2, p0, Lcom/xueqiu/android/message/a/d$3;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 925
    const-string v1, "extra_exclude_talk_id"

    iget-object v2, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v2}, Lcom/xueqiu/android/message/a/d;->b(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 926
    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 927
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v0

    const v1, 0x7f040012

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 928
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$3;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->d(Lcom/xueqiu/android/message/model/Message;)V

    goto :goto_0

    .line 930
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$3;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$3;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/xueqiu/android/message/model/Message;)V

    goto :goto_0
.end method
